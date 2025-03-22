---
layout: post
title: "Obtaining all items in Skyblock"
updated: 2025-03-22 17:13:00
---

Skyblock is a Minecraft challenge that has been around for almost 14 years. Originally created by a player named Noobcrew, it has been a popular challenge. The problem with Skyblock is that not every item is available. On the official [Skyblock server](https://skyblock.net/), this is remedied by making multiple items obtainable through shops, ranks and trading. This kind of gets rid of the immersion in my opinion and is a lot of work to play within singleplayer.

To play singleplayer Skyblock, there are a lot of mods and datapacks that make this possible, specifically those made by [BPR02](https://modrinth.com/user/BPR02). I’ve started my own Skyblock adventure using his [Skyblock Standard](https://modrinth.com/datapack/standard-skyblock) datapack. However, I wanted to try and create my own datapack to make all unobtainable items obtainable in standard Skyblock.

## Unobtainable items

To start off, I’m approaching this from the default Skyblock world that is included in the [Skyblock Standard](https://modrinth.com/datapack/standard-skyblock) datapack. This means we start out with a chest with an ice block and a lava bucket and start with a small island with grass and dirt. We also have a nether side with both forms of nylium, soul sand and nether wart to have some of those nether blocks. This means that a lot of items are already available, but we are still missing some of them. I’ll try and list them as compactly here, so you can have somewhat of an estimate.

- Deepslate and its variants aren’t able to spawn, they only appear naturally.
- Tuff is the same story as deepslate.
- Resin and its variants are impossible to get, as pale oaks from saplings don’t generate creaking hearts.
- Netherrack isn’t renewable.
- Chorus fruit doesn’t spawn on the small end islands, which means that all purpur variants are not obtainable.
- Diamonds are possible to get in some of the end ships, netherite is impossible to get.
- Amethyst and calcite only generate in geodes, which don’t spawn.
- Mycelium is only obtainable through normal world generation.
- All ore blocks aren’t possible to get.
- Two tall flowers, dead bushes and spore blossoms only generate naturally, which makes them unobtainable.
- All the plants and seeds that sniffers find aren’t obtainable, because sniffers aren’t obtainable.
- Sweet berries, glow lichen and cocoa beans only generate naturally, so not obtainable.
- Sponges aren’t obtainable, elder guardians don’t spawn.
- Heart of the sea only spawns naturally, so they aren’t obtainable.
- Recovery compasses aren’t available, echo shards don’t generate.
- Breezes don’t spawn naturally, so wind charges and breeze rods aren’t obtainable.
- A lot of loot from vaults isn’t obtainable, most importantly the enchanted golden apple and the heavy core.
- Some music discs can’t be obtained, because they aren’t creeper drops.
- Pottery shards aren’t obtainable, because suspicious sand and gravel don’t exist.
- Some banner patterns only generate naturally, same goes for smithing templates.
- Swift sneak and Wind burst also only generate naturally, which makes them impossible to get.

Whew, that’s a pretty long list and not every item is easily fixable. I’ll try and go by every item, it’s cause of not existing and the solution I’ve thought of in this post. If you just want a quick link to the datapack that I’ve created and the [wiki](https://codeberg.org/legoraft/simple-skyblock/wiki) page, [here](https://codeberg.org/legoraft/simple-skyblock) you go. Have a lot of fun playing Skyblock and figuring things out!

## The solutions

To solve all these problems, we need to employ some game design, and preferably in the same style as Minecraft does. I also want to just use a datapack, because these are easily added to any world and you don’t have to mod minecraft to use one. Lastly, datapacks are also really accessible to create and modify, which means that you can easily change up some things I have thought of, because not everyone likes the same things.

We can take a look at the default minecraft datapack with this great [repo](https://github.com/PixiGeko/Minecraft-default-data). It has all the default minecraft datapack data for every version archived and lets us poke around in the default minecraft data. With these datapacks, we can change loot tables for mobs, chests and blocks. We can also add or change crafting recipes and even change some game mechanics. We are going to try and use these features to add all missing items to our Skyblock world.

### Fishing

Fishing is really useful in skyblock. Through fishing we can get saddles, bamboo and lily pads. These items wouldn’t be obtainable without this mecahnic. Because fishing in a jungle already gives you bamboo, we can play around with this mechanic a bit more. Stuff like dead bushes, sweet berries, cocoa beans and two tall flowers can all be fished in different biomes through this mechanic in our datapack. We can also make this possible for chorus flowers in the end. This already crosses off a few items from our list, but we can go a bit further.

Minecraft has three different loot categories: treasure, fish and junk. The chance you get a treasure is the smallest, then it’s junk and the chance to catch a fish is the biggest. All the changes I’ve listed earlier, are part of the junk category, but we can utilize our other categories for more loot. We can add heart of the sea to the treasure category to make these obtainable. We can also modify the enchanted book code to add the swift sneak and wind burst enchantments to make these obtainable.

This already crosses off a lot of our items, but we’re still missing a ton! So let’s take a look at the mob loot, which can provide us with some interesting functions.

### Mob drops

Mobs in minecraft already drop a lot of valuable resources and can also be the only source for some resources in Skyblock, like copper. Using these mechanics, we can adjust the loot tables for mobs in multiple ways. This means that we can add elder guardian loot to the guardian loot table if it is hit by lighting or make iron golems drop heavy cores when killed by a player.

We can also add more weird ways to get some useful items by killing mobs, and I won’t go over every one of them here. You can take a look at the Simple Skyblock [wiki](https://codeberg.org/legoraft/simple-skyblock/wiki) to find every one of them. Most of these drops are smithing templates, because these don’t generate anywhere in our skyblock world and are a good reason to kill certain bosses. We can also modify the creeper music disc drops to contain _all_ music discs, which makes them obtainable. The last change is to add echo shards to the bat drops, which makes the recovery compass obtainable (and bats finally useful).

### Recipes

Recipes are really versatile in Minecraft. They don’t just allow you to create crafting recipes in a crafting table, but als allow you to add smelting recipes, stone cutting recipes and smithing table recipes.

With this, we can make diamonds a lot more obtainable, which allows us to duplicate all the smithing templates we get from mobs. We can do this by smelting down diamond armor, just like you can do for iron and gold armor. Making coral craftable also makes it a viable block to use for builds, without waiting for wandering traders. Glow lichen we can use to craft mycelium, which is another block we’re missing. I also want to make netherrack craftable like dirt, so it can be duplicated.

This also means we can re-add the old enchanted golden apple recipe and make diorite smeltable, giving us calcite. By smelting blackstone, we can get cobbled deepslate and continue this cycle by smelting normal deepslate and getting tuff. By smelting blaze rods, we can obtain breeze rods (which is a bit weird, I know).

### Misc

We’re almost through our entire list! We’re just missing a few items we’d probably want to add. I’m calling this the misc category, because it either uses another weird mechanic or I’ve been somewhat lazy and expect you to add them to the starter chest.

First, our ‘weird’ mechanics. I want to add the spore blossom to the sniffer finds, because it fits within that theme. This raises the sniffer problem, because we can’t get them. To fix this, I added two sniffer eggs to the starter chest, which gives us the possibility to get them at some point in time.

To fix the resin issue, I just added a resin block to the starter chest, because we can’t fix it easily with datapacks. Glow lichen can be obtained through shearing bogged, which also drop mushrooms. The most difficult item in my opinion was the amethyst variants. The best way to remedy this, is making the budding amethyst block obtainable. I chose to do this through cat gifts, which makes it possible to build a cat farm and get some of those items.

## Final thoughts

Creating Minecraft games within Minecraft is quite difficult, I found a few hurdles while designing this datapack, but it was a lot of fun. I do think that datapacks are a bit too restrictive sometimes. I know that stuff can be changed through `.mcfunction` files, which gives us a list of commands to execute, but this can be done much easier.

For example, I had to scrap all my villager trading ideas, because they aren’t implemented easily. Seeing that Mojang are adding a lot more data-driven stuff to Minecraft, I’m hopeful that datapacks will become more and more powerful with every update. I would just say that some mob data and villager trades should be added to the datapack API. This makes it possible to modify villager trades and make breezes spawnable by default.

In conclusion, if you want to _really_ modify a lot of the main game content, you should create your own mod, but if you just want to add a simple item, tool or crafting recipe, datapacks are great!