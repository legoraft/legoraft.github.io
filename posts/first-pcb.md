+++
title = "My first PCB"
date = 2026-03-25
updated = 2026-03-25

[taxonomies]
tags = [ "tech", "electronics", "smart home", "diy", "homelab" ]
+++

I recently made my first PCB. It was for a small, stupid project which definitely didn't need custom hardware, but it was _fun_. I wanted to make my electronics a bit cleaner after wiring everything on a breadboard. I found out about [KiCad](https://www.kicad.org/) and tried making a PCB.

## Creating a cabinet cooler

It started of with me wanting to migrate my homelab to an Alex cabinet, because I'm moving to a smaller place. Currently, my homelab is in a random cabinet that doesn't have a back, so it has a lot of airflow. The problem is just that it's to big. I wanted to add some airflow to the Alex, by adding a few fans on the back and two temp sensors to manage the two 'zones' (above and below the shelf). Because I'm using home assistant, my first thought was to integrate this little gizmo with [ESPHome](https://esphome.io).

After ordering a ton of electronics stuff (when yous start a hobby, do it right), I got into wiring a single [NF-F12 5V PWM](https://www.noctua.at/en/products/nf-f12-5v-pwm) fan from Noctua. They have some awesome documentation and I got it working way sooner than I expected. After getting the fan working, I added a DHT11 temperature sensor and hooked everything up to my ESP32, wrote some code and everything was working and visible in home assistant! I made some further iterations on the code to automatically adjust the fan curve and everything was working good[^1].

Because I finished my experiment way to soon, I wanted to make a more permanent version. I took a look at a perfboard, a soldering iron and some wires and wasn't sure if it was the best route, mostly due to it being slightly janky. Because I wasn't sure what size perfboard I needed, I wanted to draw the electrical connections and plan everything that way. I read somewhere that KiCad was the way to go, so I tried that. Because I didn't get the whole program, I layed down a lot of through-holes, roughly estimating the amount I needed and wrote it down.

## PCB Design

After my small KiCad experiment, I was wondering if I could make a PCB for this. I didn't have a lot to do and I always thought it'd be awesome to have a pcb with my name on it. I looked up some tutorials[^2] and went off to the races. After creating a wiring diagram for the circuit and assigning the footprints I could start. My first iteration had a lot of room for every component and wasn't wired that nicely. I looked at it a day later and decided to overhaul it. In the meantime, I also found a footprint for the [PWM Headers](https://www.molex.com/en-us/products/part-detail/470531000) pc's use, so I could use the correct model. This allowed me to make a very compact PCB (4.5x5.5mm)! I checked it a few times, rerouted some things and checked all the DRC errors, after which it was basically done. I added a little text on the silkscreen and exported everything.

PCB manufacturing is a little bit difficult, as the big players, JLCPCB and PCBWay are in China, charging crazy shipping feeds. After some browsing around, I found [Aisler](https://aisler.net/)[^3], a European company, and I could just upload my KiCad file. The grand total for the PCBs (with free shipping), was just €20, €5 less than I'd pay for shipping at one of the other companies.

[^1]: Check out the source code on [codeberg](https://codeberg.org/legoraft/esphome)

[^2]: The one that got me through the whole process was by [Build Electronic Circuits](https://www.build-electronic-circuits.com/kicad-tutorial/), awesome, easy-to-follow tutorial and good explanations.

[^3]: If you'd like to order your own PCB and support me, use my referral [code](!todo)
