---
layout: post
title: "Intel GPUs are great"
author: legoraft
updated: 2025-09-24 14:02:00
---

My PC suddenly broke down a few weeks ago. Even though it was six years old, this was quite unexpected and kind of annoying. The main problem was that my PC would turn on, the RGB on the motherboard would glow, but I wouldn't get any display output. Simple problem, the GPU died. I ordered a new GPU (an Intel Arc B580 I was eyeing already) and waited till the next day for it to arrive.

The next day, I installed the new GPU, booted the PC up and... Still nothing. Seems like it isn't a GPU issue. I tried swapping PCI slots, but nothing worked. I dreaded this already, as I do _have_ an extra AM4 CPU, but it was installed in my NAS. Because I was out of options, I took out the CPU, installed it and the display turned on. Nothing else seemed broken and my boot drive was also working.

## Fixing or rebuilding

Well, this caused me to debate just swapping out the old AM4 CPU, which would cost me about €50, and have me up and running. I was already planning on building a brand-new PC, which would be more small form factor and just fit the aestethic of my room a bit better. This would set me back about €750 extra on top of the €270 I already paid for my new GPU. Because the AM4 platform is practically dead and I wanted to have the new AM5 platform in my new PC, I decided to bite the bullet and go for it.

Another day later and my new PC arrived. After building it (the [Fractal Design Ridge](https://www.fractal-design.com/products/cases/ridge/) looks awesome) I also decided to change out my old Pop_OS! install for a fresh Arch Linux install with my own [dotfiles](https://github.com/legoraft/dots). This improved my workflow greatly, as I have my workspaces and tiled windows, which I've fallen in love with recently.

## Being an early adopter

I love the setup I have using my dotfiles and I am currently using Hyprland as my wayland compositor. This does come with some issues, mainly pertaining to being an early adopter. Wayland isn't fully matured yet, but most problems with wayland have been solved nowadays (see [wearewaylandnow](https://wearewaylandnow.com)). Most of the early adopter issues are related to using Intel Arc graphics. I didn't have any issues until I downloaded a libadwaita application. I love [mission center](https://missioncenter.io/) as a graphical system status viewer, and wanted to use it to monitor GPU usage during gaming. After starting mission center, I slowly saw some weird graphical errors appearing and after a little while the full application would glitch out and hang.

After doing some research, I found out that by setting `GSK_RENDERER=gl` before launching mission center it would be fixed. These issues also appear in other libadwaita applications and have the same fix. These issues seemed to be related to mesa or the intel xe driver. I found a few issues like [mesa's #13759](https://gitlab.freedesktop.org/mesa/mesa/-/issues/13759) and [nixpkgs' #353990](https://github.com/NixOS/nixpkgs/issues/353990). The root cause for these issues hasn't really been found yet, but I'm hopeful that they will be fixed eventually.


