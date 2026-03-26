+++
title = "My first PCB"
date = 2026-03-25
updated = 2026-03-25

[taxonomies]
tags = [ "tech", "electronics", "smart home", "diy", "homelab" ]
+++

I recently made my first PCB. It was for a small, stupid project which definitely didn't need custom hardware, but it was _fun_. I wanted to make my electronics a bit cleaner after wiring everything on a breadboard. I found out about [KiCad](https://www.kicad.org/) and tried making a PCB. I learned a lot of things along the way, including soldering and wanted to share them.

## Creating a cabinet cooler

It started of with me needing to migrate my homelab to an Ikea Alex cabinet, because I'm moving to a smaller place. Currently, my homelab is in a random cabinet that doesn't have a back, so it has a lot of airflow, but it's to big. I wanted to add some airflow to the Alex, by adding a few fans on the back and two temp sensors to manage the two 'zones' (above and below the shelf). Because I'm using home assistant, my first thought was to integrate this little gizmo with [ESPHome](https://esphome.io).

<!-- Maybe add some info on Joshua Boniface's fan hub and the tutorial online on DHT11 and fan control -->

After ordering a ton of electronics stuff (when you start a hobby, do it right), I got into wiring a single [NF-F12 5V PWM](https://www.noctua.at/en/products/nf-f12-5v-pwm) fan from Noctua. They have some awesome documentation and I got it working way sooner than I expected. After getting the fan working, I added a DHT11 temperature sensor and hooked everything up to my ESP32, wrote some code and everything was working and visible in home assistant! I made some further iterations on the code to automatically adjust the fan curve and everything was working good[^1].

After finishing my experiment way sooner than expected, I wanted to make a more permanent version. I took a look at a perfboard, a soldering iron and some wires and wasn't sure if it was the best route. The main problem me not knowing anything about soldering, but setting up a perfboard correctly and being unsure about it holding up weren't helping. I decided to put it off and just drew the circuit diagram on a piece of paper for now.

<!-- Maybe add the original circuit diagram and the final version next to each other? -->

## PCB Design

Enter the next day, where I'm still mulling this whole perfboard thing over. I found out about KiCad and tried to use it to plan my perfboard, to no avail. I looked up some KiCad tutorials[^2] and found out that you can plot a circuit diagram, as well as create PCBs in it. I was curious to create a professional-looking circuit diagram, so I started off creating one. The tutorial I was following also showed how to make a PCB, so I just tried making a pcb of my circuit for fun.

The first PCB I designed was huge and left a lot of blank space for all my components. I also routed everything horrifically inefficient, so it was way larger than necessary. I looked at it a day later and decided to fully overhaul it. In the meantime, I also found a footprint for the [PWM Headers](https://www.molex.com/en-us/products/part-detail/470531000) pc's use, so I could use the correct model. This allowed me to make a very compact PCB (4.5x5.5mm)! I checked it a few times, rerouted some things and checked all the DRC errors, after which it was basically done. I just added some text on the silkscreen to show it was my design.

I still wasn't fully sold on the PCB thing, though. Remember me not being sure about my soldering skills? That isn't completely without reason. I've seen some people solder in my life, and have never done it myself. I wasn't sure if I wanted to drop some money on a circuit board, just for me to screw up the soldering and shorting out the whole board. I also still wasn't sold on the perfboard, though, because of the same reason. My final call was to just discuss it with my girlfriend, who told me it'd be nicer to have a clean PCB for such a permanent project.

## Manufacturing

PCB manufacturing is a little bit difficult, as the big players, JLCPCB and PCBWay are in China, charging crazy shipping feeds. After some browsing around, I found [Aisler](https://aisler.net/)[^3], a European company, and I could just upload my KiCad file. The grand total for the PCBs (with free shipping), was just €20, €5 less than I'd pay for shipping at one of the other companies.

[^1]: Check out the source code on [codeberg](https://codeberg.org/legoraft/esphome/cabinet-cooler)

[^2]: The one that got me through the whole process was by [Build Electronic Circuits](https://www.build-electronic-circuits.com/kicad-tutorial/), awesome, easy-to-follow tutorial with good explanations.

[^3]: If you'd like to order your own PCB and support me, use my referral [code](!todo)
