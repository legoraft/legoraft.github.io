---
layout: post
title: "Why versioning is important"
updated: 2024-09-29 22:02:00
---

Recently, Mojang has [changed](https://www.minecraft.net/en-us/article/the-future-of-minecrafts-development) how they release Minecraft. This was already apparent, but it's official now. This is mostly because they want to give players new features more often. It also changes their update cycle a lot, because they changed how they version the game.

Before this change, Minecraft updates followed the [Semver](https://semver.org/) specification (somewhat). Semver is short for semantic versioning. This system tries to avoid something called “dependency hell”, where all dependency versions and software versions clash and nothing works anymore (read more on their [site](https://semver.org/#introduction)). This system requires a software version built up from three numbers: `X.Y.Z`, where X is the major version, Y is the minor version and Z is the bug fix. In Minecraft, this system is loosely applied.

Their current system is as follows: Every minor version is where Mojang implement a major version. A normal Minecraft update would be `1.21`, with `1.22` coming next. Every bug fix, performance optimisation or small fix will be (mostly) backwards compatible and added to the third number. A bug fix in version `1.21` would be `1.21.1`.

## What's wrong

So, Minecraft doesn't really follow Semver, who cares? My first mod, [Simple armor hud](https://github.com/legoraft/simple-armor-hud/releases), also didn't follow it very well, and to be honest, it doesn't matter a lot. The problem has started with the new changes. The issues begin with the fact that the Semver major version never changes, which removes a lot of flexibility for versioning. This is why the last number is now reserved for feature drops _and_ bug-fixes. If Mojang would truly follow Semver, they wouldn't remove backwards compatibility when they update the minor version (which is their major version).

The most recent change in the update cycle of Minecraft causes the bug-fix version to be completely neglected. They want to drop new (incompatible) updates on every minor version bump, while also still pushing bug-fixes to this version. This means that `1.21.2` can be the version in which the bundles are added ([24w39a](https://www.minecraft.net/en-us/article/minecraft-snapshot-24w39a)), or be a simple bug fix version that's backwards compatible. This removes a lot of the information you can get from a Semver spec version. Even though it's annoying, this isn't a big problem.

## The problem

The versioning won't hurt a lot of people. If you want to play Minecraft, open the most recent version and play it. Some people, like me, will be a bit annoyed by the fact that you can't get a lot of information from the Semver version. The biggest issue affects developers.

Before this change, if you built a mod for `1.21`, you could (mostly) count on it working for every bug-fix version after that. This is often called `1.21.x` support. After this change, mod developers will need to rewrite their mod a lot on every minor version. This means that mods probably won't support every minor version from now on. This can cause developers to drop out or players to get annoyed because mod development just isn't that fast.

The biggest example of this is masa, he's the brain behind mods like litematica, minihud and tweakeroo. After this change by Mojang in versioning became apparent, he [announced](https://www.reddit.com/r/litematica/comments/1di4o3h/announcement_about_litematicas_future_and_updates/) that he'll stop developing his mods for newer versions. Mojang also has been a lot more radical with code changes, meaning that a rewrite sometimes isn't just adjusting a few variables, but needing to understand a whole new system.

Mod development is slowing down for people who do this in their free time. I've also considered stopping releasing on every minor release, but I'll update my mods when I have the time. This can annoy some people, but please respect the time and effort mod developers put into their mods.

## Solutions

To be fair, I don't think that Mojang will change Minecrafts versioning system. The subset of people who have problems with their new feature drops is way too small to care about. Besides, Mojang has been giving the Minecraft updates names for quite some time. This means that the usual “I play Minecraft `1.21`.” can be replaced by “I play the **Tricky Trials** update.” I just happen to like the version names. I do want to propose a versioning solution though.

The simplest solution to bring back real bug fix versions would be to start using the major release number, so `1.21.1` turns into `21.0.1` if it was a bug fix version, and `21.1.0` if it was an extra feature drop. Mojang can also add tags to their version names, like `1.21.1-bug0` or something like that. These solutions are just quick fixes, and as I've said before, I don't think Mojang will change this.

I just want to ask everyone who uses mods, to try to respect the developers. Minecraft is a huge game and the code can be quite complex sometimes. Just calmly wait for the updates of your favourite mods and don't harass any developers. Be grateful that they do most of this work for free and if you can, donate to them if they have a way to support them. I'm also just going to try to keep my mods as up-to-date as possible. Enjoy the fact that we are able to mod the java version of the game, because even that isn't a given [anymore](https://www.reddit.com/r/MCPE/comments/1d9j3cb/modding_for_mcbe_is_actively_getting_supressed/).