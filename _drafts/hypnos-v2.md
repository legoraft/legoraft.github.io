---
layout: post
title: "Intel GPUs are great"
author: legoraft
updated: 2025-09-24 14:02:00
---

I recently was forced to upgrade my PC, because its CPU broke. I went for a fully new system, as my old one was 6 years old and I wanted to move to a new platform (most notably AM5). Because I didn't want to break the bank, I went with an Intel B580, because it seems to be the best bang-for-buck GPU. It is a great GPU, but it still has some issues. This is just the fact for early adopters of this tech. I want to dive in some of the good bad and ugly for Intel GPUs on Linux.

My PC recently broke down, the CPU died and it wouldn't boot up correctly. This caused me to go with my fully new planned-out build, which swapped AM4 with AM5 and upgraded the GPU significantly. I wanted to keep the cost down a bit, so I went with one of the new Intel Battlemage GPUs. AMD and Nvidia are horrendously overpriced nowadays and Intel has a good bang-for-buck GPU, the [Arc B580](https://www.intel.com/content/www/us/en/products/sku/241598/intel-arc-b580-graphics/specifications.html). This does come with the risk of being an early adopter, but the GPUs are already in their second generation and it should be fine, right? Well, I found that out by trial and error.

## The good

These new GPUs are great. Given, I come from an 8 year-old GPU, the [RX570 4GB](https://www.amd.com/en/support/downloads/drivers.html/graphics/radeon-600-500-400/radeon-rx-500-series/radeon-rx-570.html) from AMD. This GPU has served me well and has held up great in every game I've thrown at it in the past 6 years. Because it was an AMD GPU, it also worked great in Linux, which I daily drive on my PC. This new Intel GPU totally _slaps_ in place of my old AMD GPU. I can run my games at higher graphics settings, my renders are way faster and it seems to be a good future-proof GPU.

The issues I've had mostly stem from using Linux, because it uses Vulkan as a graphics API. Intel's vulkan packages
