---
layout: post
title: "Installing Arch Linux with backups"
author: legoraft
updated: 2025-06-17 12:55:00
---

Arch Linux is often referred to as one of the ‘hardest' Linux distributions to learn, but that isn't really true. If you can follow instructions thoroughly and are willing to learn things about your Linux system, Arch can be quite simple. This blog post will try to help with that, where I run you through a basic Arch Linux installation and teach you some of the ins and outs of the Linux system. We'll be setting up our system with `btrfs` and `systemd-boot` (I'll explain what those are a bit later). We'll also be enabling backups and exploring some GUI stuff.

## Booting

You can start installing Arch by preparing a bootable USB disk with the Arch Linux iso. You can download it from the [website](https://archlinux.org/download/) and flash it to the USB disk by using a tool like [Etcher](https://etcher.balena.io/). After doing this, you can select your drive in your motherboard's boot menu and boot to it.

You can select the Arch Linux installation option here and you'll be welcomed with a black screen and a small welcome message. You can now start installing Arch Linux! We're going to install Arch the 'hard' way, but if you're not interested in learning some new things about the Linux system, [`archinstall`](https://wiki.archlinux.org/title/Archinstall) also exists. This gives you a simple, guided setup to be up and running as soon as possible.

## Setting up

Before we go configuring our system, we need to set up a few small things. First, select your correct keyboard layout. The default layout is `us`, which I'll be using. You can list the available keyboard layouts with

```
localectl list-keymaps
```

You can load the keys using

```
loadkeys <keymap>
```

We'll also need to check if the system is booted in UEFI. This is important, as we'll be doing a UEFI install. We can check if the system is booted in UEFI by running:

```
cat /sys/firmware/efi/fw_platform_size
```

If your system returns `64`, you're using a 64-bit system, `32` is a 32-bit system and if it returns a `No such file or directory` error, you're booted in BIOS and should try rebooting into UEFI. You'll probably have a 64-bit system, as this is the modern standard.

Last, we should set up internet. If you want to install over wifi, you should connect to your wifi network using [`iwctl`](https://wiki.archlinux.org/title/Iwd#iwctl). If you're using a network cable your internet should be working out of the box. Check your internet by running the `ping` command:

```
ping -c 5 archlinux.org
```

If this command returns five responses, your internet is fully up and running. Next, let's check the system clock and synchronise it. Check your system clock by running:

```
timedatectl
```

If the time displayed is the same as the current UTC time, your clock is synchronised. This clock probably won't show your local time, as linux almost always uses UTC time for the system clock. If it isn't the same as UTC, you should run

```
timedatectl set-ntp true
```

to synchronise the clock with an NTP server, which keeps the clock up to date. After setting up all this, we can head into partitioning the disk and setting up our operating system.

## Partitioning

To create a UEFI install of Arch Linux, two partitions are needed. These partitions are the root partition, also known as `/` and an EFI partition (often located at `/boot`). The root partition is where all your files will reside and the EFI partition will just hold some firmware for the boot process and the boot loader. This partition doesn't have to be any bigger than 1 GB. If you don't have a lot of ram in the system, you can also add a `swap` partition to prevent running out of memory.

I'll be using the following partition layout for my laptop (I don't have a lot of RAM on there). Remember that you can adjust the swap size accordingly. [This document](https://docs.voidlinux.org/installation/live-images/partitions.html#swap-partitions) gives some extra info on swap sizing.

| Mount point | Type             | Size      |
| ----------- | ---------------- | --------- |
| /boot       | EFI System       | 1 GB      |
| \[SWAP\]    | Linux Swap       | 4 GB      |
| /           | Linux filesystem | Full disk |

With this partitioning scheme, we're ready to take a look at our disks. By running `lsblk`, we can see the disks that are in our system. These will probably be listed as `/dev/sda` or `/dev/nvme0n1`.

Be careful if you have multiple disks, as this will wipe your entire disk. Choose the disk you want and remember it's label. I'll be using `cfdisk` to partition the disk, as I think it's relatively easy to use. Run the following command to open `cfdisk`:

```
cfdisk /dev/<disk label>
```

In cfdisk, we'll choose a GPT partition table and we can start partitioning the disk. If you see multiple partitions on the disk, make sure to delete them all so you can follow the partitioning scheme laid out above. 

Make sure you create the boot partition first, then the swap partition and use the rest of the disk for the root partition. You can add a new partition by selecting the 'new' option in `cfdisk`, and giving the size by typing `<number>G` in the input to specify the amount of gigabytes (this also works for megabytes with `M`).

You'll also need to set the partition types. You can do this by selecting your partition, selecting type and choosing the correct type. The types are also listed in the partitioning scheme. After creating the partitions and setting the types, write the changes and quit `cfdisk`. Make sure these changes are written, it will delete the partition scheme otherwise.

Now, we'll format the disks. I'll start off with the main partition, as that's the more difficult one. We'll use the `btrfs`[^1] filesystem to create system backups easily.

First, run the `lsblk` command again to take a look at your partitions and their new names. They should be formatted as `/dev/sdaX` or `/dev/nvme0n1pX`. Remember the number of the root partition for the next step. To make a btrfs root partition, start by running:

```
makefs.btrfs -L <label> /dev/<root-partition>
```

The label can be what you want, I'm using `archlinux` as a label, just so I know it's the root partition. After formatting the disk to `btrfs`, we need to mount it and create our subvolumes. You can mount the disk by running the `mount` command:

```
mount /dev/<root-partition> /mnt
```

After mounting, we'll create the `@` volume for root, `@home` for the home folder and `@snapshots` for our backups. create the volumes by running the following command:

```
btrfs subvolume create /mnt/<volume>
```

After creating the volumes, check if all are there by running the following:

```
btrfs subvolume list /mnt
```

Then, you can unmount the disk by running

```
umount /mnt
```

Now, we can format our other disks. First, format the boot partition to the `FAT32` format and format the swap partition:

```
mkfs.fat -F 32 /dev/<boot-partition>

mkswap /dev/<swap-partition>
```

Now, we can mount all these disks. We're gonna start off with the root partition and subvolume, we're gonna mount this to `/mnt`, like we did earlier. We're also gonna use `zstd` compression to minimise the space used on the disk.

```
mount -o compress=zstd,subvol=@ /dev/<root-partition> /mnt
```

After mounting, we need to create a few directories for our other partitions. These will be called `home`, `boot` and `.snapshots`. These directories can be created by using the following command:

```
mkdir -p /mnt/<directory>
```

After creating the directories, we're going to mount all our partitions to the correct directory. I've already given the mount points in the partition scheme earlier, but I'll lay them out here again. First, mount the `@home` subvolume to `/mnt/home` and the `@snapshots` volume to `/mnt/.snapshots`:

```
mount -o compress=zstd,subvol=@home /dev/<root-partition> /mnt/home

mount -o compress=zstd,subvol=@snapshots /dev/<root-partition> /mnt/.snapshots
```

Now, just mount the `boot` partition to `/mnt/boot` and turn the `swap` partition on.

```
mount /dev/<boot-partition> /mnt/boot

swapon /dev/<swap-partition>
```

Now, we're ready to bootstrap the system and finish up our installation. We'll start by running `pacstrap` and installing some base system utilities. Remember to also install the microcode update for your processor, either `intel-ucode` or `amd-ucode`. The other tools listed are needed for our installation. You can also choose to use another kernel[^2]. If you're not sure about that, you should just use the `linux` kernel.

```
pacstrap -K /mnt base linux linux-firmware <microcode> base-devel nano networkmanager
```

Replace the `<microcode>` section with your preferred microcode package and run the command. This can take a little while, depending on your internet connection. After installing, we just need to generate the `fstab`, which automatically mounts our partitions on boot and then we can `chroot` into the system! Generate the `fstab` with the following command:

```
genfstab -U /mnt >> /mnt/etc/fstab
```

This will generate the `fstab` from our currently mounted disks, making sure the setup is exactly the same as we've made it now.

After running the command, take a look at the file using the `cat` command. Check if the partitions created earlier are listed. If they aren't, check if everything is mounted.

After doing that, we can `chroot` into the system and finish up the installation:

```
arch-chroot /mnt
```

## System configuration

We're now inside our (almost) newly-installed system. We're just going to add the final few tweaks and finish the setup. Starting off with the timezone. You can find your timezone in `/usr/share/zoneinfo` and we'll need to link it to `/etc/localtime`.

```
ln -sf /usr/share/zoneinfo/<Region>/<City> /etc/localtime
```

If you're unsure of which region and city your timezone is, you can use the `ls` command in the `/usr/zoneinfo/` directory. After setting the timezone, you can sync the hardware clock to it:

```
hwclock --systohc
```

Next, we'll install the preferred locales. You can install multiple and add them to the `locale.conf` file. First, edit the `locale.gen` file:

```
nano /etc/locale.gen
```

Remove the `#` from the locales you want to install. I'm installing the `en_US.UTF-8` locale for the english language and the `nl_NL.UTF-8` locale for sane measurements. After doing this, you can run the `locale-gen` command to generate your chosen locales. You install these locales in your `locale.conf` file. Open the file by running:

```
nano /etc/locale.conf
```

If you're just using one locale, you can add just one line to the `locale.conf` file (for all configuration options in the `locale.conf`, check out [this](https://wiki.archlinux.org/title/Locale#Variables)):

```bash
# Single locale
LANG=en_US.UTF-8

# Multiple locales
LANG=en_US.UTF-8
LC_MEASUREMENT=nl_NL.UTF-8
```

We also need to set up the network installation. First, add a hostname to your system by editing the `hostname` file:

```
nano /etc/hostname
```

Add your hostname in this file, it should be just a single line and not contain any spaces. This can be any name you want your computer to have.

To make `localhost` working in web browsers, we need to edit the `hosts` file:

```
nano /etc/hosts
```

Add the following lines to the file (this will just link the local ip to the `localhost` domain):

```
127.0.0.1    localhost
::1          localhost
127.0.1.1    <hostname>
```

To finish up our install, enable the `NetworkManager` service so it runs automatically. If you're connected through Wi-Fi, you probably need to reconnect to your network through network manager and its `nmcli` or `nmtui`. Enable `NetworkManager`:

```
systemctl enable NetworkManager
```

It should return a few lines, which shows the service being enabled.

Now, let's add a boot loader to boot into our system. I'll be using `systemd-boot`, because I like it more (and it's installed by default). GRUB is also an option, which can be installed following this [tutorial](https://wiki.archlinux.org/title/GRUB).

Start installing `systemd-boot` with the following command:

```
bootctl install
```

We need to add our own boot entries and configure the loader. First, edit `loader.conf`:

```
nano /boot/loader/loader.conf
```

You'll want to add the following lines[^5] (you can remove the `#` from the timeout line and set it to 5):

```
default    arch-*
timeout    5
```

This shows the boot menu for 5 seconds and add all files containing `arch` to the boot entries. Now, let's create our boot entry by creating the `arch.conf` file:

```
nano /boot/loader/entries/arch.conf
```

Add the following lines to your entry:

```
title    Arch Linux
linux    /vmlinuz-linux
initrd   /<microcode>.img
initrd   /initramfs-linux.img
options  root=UUID=<UUID> rootflags=subvol=@ rw
```

This entry will be named 'Arch Linux', will first look for the correct linux image, then load the microcode and the filesystem. After that, it will read our root filesystem, which is the `@` subvolume on the correct disk UUID[^3]. If you've installed a different kernel, make sure you are using the correct `linux` and `initramfs` files (you can find it by just running `ls /mnt/boot`.

After creating the entry, we can move on to creating a user and rebooting.

## User creation

We won't be adding a `root` user, because it's inherently insecure. We'll be using a normal user that has elevated privileges through the `sudo` command. First, start with creating your user:

```
useradd -m -G wheel -s /bin/bash <username>
```

This will add a user with a home directory, add the user to the `wheel` group and set the default user shell to `bash`. The wheel group is important for the `sudo` command, as we'll let everyone in the `wheel` group use it. Edit the `sudo` settings by running `visudo`:

```
EDITOR=nano visudo
```

In this file, we need to look for the following line and remove the `#` from the front (don't use the variant with `NOPASSWD`, as this won't require a password and is insecure):

```
%wheel ALL=(ALL:ALL) ALL
```

At last, create a password for your user using the `passwd` command:

```
passwd <username>
```

Enter your password, and the user setup is done! You can check if the `sudo` command works by logging in as the user using `su <username>` check if you can edit a file using `sudo nano` and enter your password. If everything works, you can `exit` and we'll round up the install.

First, exit the `chroot` environment by running `exit`. Next, we'll unmount all the disk by running `umount -R /mnt`. You can ignore any errors. You can run `reboot`, but I prefer shutting down, removing my USB and starting the computer myself. You can do this by running one of the following:

```bash
# Shuts down the system
shutdown now

# Reboots the system
reboot
```

After shutting down, remove the USB and start the computer. You should be welcomed by `systemd-boot` and a text-based login screen after that. Congratulations! You've installed Arch Linux and we'll set up our backups next.

## Backups

After restarting the system, check if your system still has internet by running the `ping` command:

```
ping -c 5 archlinux.org
```

If you’re getting any errors and set up your system over Wi-Fi, you should run `nmtui` to connect to your Wi-Fi again. After doing this, it will connect automatically on startup. You can now check if your system is fully up-to-date (it should be) by running the following:

```
sudo pacman -Syu
```

This is also the correct way to update your system. Now, we want to enable simple backups for our system. Arch is bleeding-edge, so it can break at times and having a good backup strategy helps to keep te experience smooth and stable. We'll be using `snapper` for backups, because it's simple and uses `btrfs`, which matches with our filesystem. You can also use a tool like `timeshift`, which has a GUI to restore backups.

Start off by installing `snapper` and `snap-pac`. Snapper is the utility we'll be using and `snap-pac` will automatically create snapshots upon installing a program or doing a system update.

```
sudo pacman -S snapper snap-pac
```

Snapper uses a dedicated subvolume called `.snapshots` by default, but I want to use the `@snapshots` subvolume we've created earlier. Because of this, installing snapper is a bit more work.

Start off by unmounting `@snapshots` and deleting the directory it's mounted to. We'll unmount the volume with the `umount` command and remove the directory its mounted to.

```
sudo umount /.snapshots

sudo rm -r /.snapshots
```

After removing the directory, we can configure snapper.

```
sudo snapper -c <config> create-config /
```

You can name your config anything, I'm just using `root` to reference the root partition. After this, a new `.snapshots` subvolume is created. We'll need to delete this and re-add our own subvolume.

```
sudo btrfs subvolume delete /.snapshots

sudo mkdir /.snapshots
```

Now, we can remount the `@snapshots` subvolume to this directory and snapper will read and write from it correctly.

```
sudo mount -a
```

If we update the system or install a new package, backups will be made automatically and we can restore the system state if something goes sideways.

We should also configure some simple rules for our back-ups, to prevent our drive getting clogged up with back-ups. You can do this by editing `/etc/snapper/configs/<config>`. I'll be changing the following variables:

```
NUMBER_CLEANUP=yes
NUMBER_LIMIT=3
NUMBER_LIMIT_IMPORTANT=5

TIMELINE_CREATE=yes
TIMELINE_MIN_AGE="1800"
TIMELINE_LIMIT_HOURLY="3"
TIMELINE_LIMIT_DAILY="2"
TIMELINE_LIMIT_WEEKLY="0"
TIMELINE_LIMIT_MONTHLY="0"
TIMELINE_LIMIT_YEARLY="0"
```

This will create automatic back-ups, where 3 are kept every hour and 2 daily back-ups are kept. We'll also save 3 normal back-ups (which `snap-pac` creates) and 5 important back-ups.

We can test our new snapper backups by running the following command and creating a backup for the base install of our Arch system:

```
sudo snapper -c <config> create -u important=yes -d "Base system installation"
```

This will create an important backup (of which 5 will be kept) and give it a description of 'Base system installation'.

## Next steps

Next, you'll probably want to install some GUI to make the black terminal go away. I want to preface this with the following: A lot of parts of a Linux install are choices and opinions. I've already pushed some user choices by running Arch, using the normal kernel and using snapper for back-ups. Linux has almost infinite choices for your system and for the graphical interface it also has a lot of choice.

I'd want you to figure out whatever GUI suits you. That's why I'll lay a few out for you, and you can take a look at them. You can install each GUI with `pacman -S <package>` and remove it if you don't like it with `pacman -Rns <package>`. So let's go on to the list:

- [GNOME](https://wiki.archlinux.org/title/GNOME) is a desktop environment which focuses on simple user experience and good design, you download the large metapackage and are good to go.
- [KDE](https://wiki.archlinux.org/title/KDE) is another desktop environment that focuses more on being able to modify a lot of settings.
- [Xfce](https://wiki.archlinux.org/title/Xfce) is a light-weight desktop environment which doesn't have the best looks out of the box.
- [Cinnamon](https://wiki.archlinux.org/title/Cinnamon) is a windows-like desktop environment that's also easy to use.
- [Wayland](https://wiki.archlinux.org/title/Wayland) is a library for compositors, which allows you to mix-and-match different compositors, bars and other applications. You can fully design your own desktop experience[^4].
- [Xorg](https://wiki.archlinux.org/title/Xorg) is the older brother of Wayland, it has been around for about 20 years and wayland is aiming to replace it. A lot of people[^4] are still using xorg and it is still a valid choice.

All these options have positive and negative sides to them, so you should take a look at a few and try them out. Everyone has their own preferences, and I’m currently using Hyprland, which I’ve set up exactly as I’d like it to be (check out my [dots](https://codeberg.org/legoraft/dots)). A desktop environment can be a good choice if you don’t want to fiddle around with your computer, but window managers and compositors are really fun if you’re interested. Pick your poison, you’ll probably change it out at some point.

I hope your Arch install is running great and you've found the GUI of your liking. The great thing of something like Linux is the ability to switch around those things whenever, so it's always awesome. If you'd want to read a bit more on Linux and Linux distros I'd recommend, check out [this](/posts/switching-to-linux) post.

[^1]: Btrfs is a filesystem that allows you to take snapshots of your filesystem very easily. This makes rolling back previous versions easy and makes the Arch experience a bit more stable.

[^2]: The kernel contains software that's essential for your system. You can choose between a few different ones, they're listed [here](https://wiki.archlinux.org/title/Kernel#Officially_supported_kernels). For a desktop pc you’ll probably want to choose either the `zen` kernel or the normal `linux` kernel.

[^3]: The UUID can be found by running `blkid /dev/<root-partition>`. The UUID should be a string of letters and numbers. You can copy the output of this command by running `blkid /dev/<root-partition> >> /boot/loader/entries/arch.conf`, but you need to remove all other text from the UUID.

[^4]: Check out [unixporn](https://reddit.com/r/unixporn) (it's SFW, I swear). People customize the heck out of their computers and some stuff looks great. It does require a lot of configuration and tweaking (you'll be mostly working on your desktop experience instead of doing work).

[^5]: If the systemd-boot looks a bit blurry or low-resolution, you can add the `console-mode` variable to your config. Set this value to `max` by adding the following line: `console-mode max`.
