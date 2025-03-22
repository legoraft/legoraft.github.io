---
layout: post
title: "Switching to Linux"
updated: 2024-12-31 18:30:00
---

With Windows 10 support coming to it’s end and Windows 11 requiring TPM, a lot of older hardware is rendered unusable. And for some people this can also make it an easy switch to Linux. So if you’re feeling adventurous and want to try out Linux, or you’re debating switching: Linux is awesome and I think that it can really be a good choice.

## What is Linux?

Firstly, Linux isn’t the full operating system like windows, it’s a kernel. You can take a look at the [wiki](https://en.wikipedia.org/wiki/Linux_kernel) page to find out what that exactly entails. If you want to use Linux as an operating system, you have a lot of choice. The full fledged operating systems built upon Linux are called distributions or distros, and there are a [lot](https://distrowatch.com/). These distros all have their own set of features and varying levels of difficulty. The biggest difference is often their desktop environment[^1], which you can change after you’ve installed a distro of choice so no worries!

Well, we know we are looking for a distro, but which distro should you choose? The answer is a bit complex, but to make it a bit simpler, I think their are three categories of computer users: the casual user, gamer and tinkerer. As these types are not that rigid, try to take a look at the recommendations per type and see what fits you best. I’ll try and go over all the advantages and disadvantages as best I can.

## Casual use

First, we have the casual user. These people mostly interact with their web browser. It isn’t too difficult to be one nowadays: almost everything is done in a browser from the ‘cloud’. You can also use things like word or other office products, but casual use isn’t anything more than that. If you are a user that identifies somewhat with this description, I think Linux can be a great choice. The most common browsers have great linux support and Linux has all the same functionality as a simple windows install (and often is a bit less resource-intensive). However, there is a caveat with office products. 

Microsoft office doesn’t support Linux as a desktop application. As I’ve said earlier, because a lot of applications now run through the browser you can just use word, excel and powerpoint like that. If you’d like an application, there are some simple alternatives for Linux. The biggest one is [LibreOffice](https://www.libreoffice.org/). It supports all office formats and looks quite good. It also works on Mac and Windows, so you could just give it a try before switching.

Now that we have the biggest issue for casual use out of the way, what distro should you go for? I think that [Linux Mint](https://linuxmint.com/) is a great option for everyone who is used to windows. It provides a nice graphical install, has a great application center and also is built upon Ubuntu, which makes googling for any issues you might have very easy, as it’s kind of the ‘standard’ distro. There are a few different editions, but their Cinnamon edition is the thing Linux Mint is known for, so I’d just go with that. The installation process is really simple, and if you’re unsure their [documentation](https://linuxmint-installation-guide.readthedocs.io/en/latest/index.html) is really good, holding your hand through every step.

## Gaming

Gaming is a complicated one on Linux. [Proton](https://en.wikipedia.org/wiki/Proton_(software)) made a lot of games available on Linux, but some of them still don’t work and some multiplayer games have [explicitly said](https://answers.ea.com/t5/News-Game-Updates/Dev-Team-Update-Linux-amp-Anti-Cheat/td-p/14217740) that they will not support linux. This means that you should take a look at the games you play and if they’re supported. Steam has made proton, which can be enabled in settings and has a great [database](https://www.protondb.com/) on the status of different steam games.

With gaming comes another caveat: graphics cards. A while ago, having an Nvidia graphics card meant that running Linux would be somewhat complicated. Luckily, a lot of different distros now support them out of the box or have easy installs for the drivers. Also, if you do something like streaming or making videos, this can be a problem. OBS works great on Linux, but the stream deck, adobe software and some other proprietary software doesn’t work on Linux. Check the programs you use before switching.

I hoped that this paragraph could be a bit more positive, because I use Linux every day and I can play almost any game I want. The truth is that gaming is the most complex one out of the bunch. If you still want to switch, there are a lot of different distros to choose from: [Linux Mint](https://linuxmint.com/) is still a great option and has a built in Nvidia driver installer, [Pop!\_OS](https://pop.system76.com/)[^2] is well known for it’s great Nvidia support and easy-to-use system. Lastly, [Garuda Linux](https://garudalinux.org/) advertises itself as a distro for gamers and seems to be quite good for gamers.

## Tinkerers

Tinkerers are mostly people who like to mess around with their tech stuff and learn new things along the way. If you’re a tinkerer at heart, Linux can really be the thing you haven’t seen yet (or you’re already using it). To be honest, Linux is great for tinkerers. You can customize your own window manager or desktop environment to tweak it to exactly what you want it to look. You can take a look at [r/unixporn](https://reddit.com/r/unixporn), where everyone posts their most awesome configs. Besides the user interface, you can create your own distribution or figure out and adjust everything about your system. There are tons of programs that allow you to customize everything you want. Take a look at projects like [Linux from Scratch](https://www.linuxfromscratch.org/) for example. You can also just use it as-is and mess around with smaller things in stead of creating the whole distribution.

Linux can be one huge project if you want it to be. If you are a tinkerer you can pick up a whole new project using Linux. Tinkering can go all sorts of ways, so of course you need to check if all software you need works on Linux. If your tinkering stuff is already on a computer, you can just use most of the software you already use. For homelabs, Linux is great and supports most of the things you need. If you’re into programming, you can use most of the toolkits that exist (a lot are made for Linux more than windows).

All in all, Linux is great for tinkerers and can be your next big project if you want it to. Otherwise, it’s just a program that can work for you in whatever way you want it to. There are a lot of great distros for tinkerers. If you don’t have any idea what Linux is or if you even want to use it, start off with something like [Linux Mint](https://linuxmint.com/). If you want to get your hands dirty right away (and you have a lot of time to learn), take a look at something like [Arch Linux](https://archlinux.org). After you’ve gotten a bit more familiar with Linux, you’ll probably go down a lot of rabbit holes and can try a lot of new stuff.

## Conclusion

Linux often seems like a daunting thing to some people, but in reality it isn’t as challenging or difficult. Linux can be whatever you want it to be, as simple or as complex as you’d like it to be. Something like Linux Mint (which I’ve linked all over this post) is very user friendly. On the other hand, Arch Linux can give you maximum control and lets you customize anything and everything. There are lots of other distributions that you can try out, but I’d advise that Linux Mint or Pop OS[^2] is the best starting point for almost everyone. If you want to check out some weird distros, take a look at [distrowatch](https://distrowatch.com/).

I believe that everyone can use Linux. The only catch is that you should want to use it. If you just expect to use windows but with a different name you should stay on windows. Linux is a different thing and you need to open up to doing things in different ways sometimes. I hope that if you’re reading this, you’re interested in using Linux and are ready to dive into trying it out (perhaps on that old laptop that doesn’t support windows 11). If you’re still anxious, you can always try using a [virtual machine](https://itsfoss.com/install-linux-mint-in-virtualbox/).



[^1]: A [desktop environment](https://en.wikipedia.org/wiki/Desktop_environment) is a collection of programs that compose your computers desktop.
[^2]: Pop is currently undergoing a huge desktop rework, which will take until at least 2025 for it to be fully up-to-date again.