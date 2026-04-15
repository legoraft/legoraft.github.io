+++
title = "Change your updates, change your versioning"
description = "Recently, Mojang announced in a post on their site that they will change how Minecraft will be versioned. This is a great step towards better communication between players, developers and modders."
date = 2026-04-14
updated = 2026-04-14

[taxonomies]
tags = [ "development", "games", "minecraft" ]
+++

Mojang has changed their versioning system. This is something I didn't expect, but it is a great step forward. In a post about two years ago, I [wrote](@/posts/why-versioning-is-important.md) that Minecraft's versioning was getting worse with the new game drop system, making it so players and developers don't know what the latest major and minor versions are. Recently, Mojang announced in a [post](https://www.minecraft.net/article/minecraft-new-version-numbering-system) on their site that they will change how Minecraft will be versioned. This is a great step towards better communication between players, developers and modders.

## The old

If you haven't read my previous post, here is a quick recap of the old situation. For years minecraft was versioned with a `1.x.x` version. The first `x` showed the current major version, while the second was reserved for bug fixes. An example of this is `1.16.3`, where `1.16` shows that it is the nether update and the `3` shows that the [item duplication bug](https://bugs.mojang.com/browse/MC/issues/MC-198678) present in `1.16.2` has been fixed.

This system was great for years, until Mojang started releasing game drops. These are smaller updates that get released three times a year. With this new system, they just started incrementing the bug fix number. This caused the `1.21` version to go all the way to `1.21.11`, the highest version number until [now](https://minecraft.wiki/w/Java_Edition_version_history#1.21). With this, players and modders couldn't easily see the difference between a bug fix and a major version, as both incremented the same number.

## The new

The new system uses the year of the release as the first number, and every consecutive game drop will increment the second number. The last number is reserved for bug fixes again. The first game drop of 2026 was `26.1`, with an immediate bugfix being `26.1.1`. This makes every version a lot more clear. We'll be able to communicate through version numbers in a clear manner again, as is common in the Minecraft community. This also makes modder's work easier, as we can release `26.1.x` releases again and assume that the mod will be supported in all bugfix releases.

A side-effect of this change is the snapshot numbering also changing. Snapshot numbering always was a little weird, but I liked it. In the old system, you had the year number, snapshot number and hotfix letter. `25w41a` is an example, where you know this was the 41st snapshot in 2025, and it was the first iteration. Now, snapshots are numbered with the new drop number and the snapshot number, so `26.1 Snapshot 1`. Even though I liked the weird letter/number combination, this system is way clearer and tells players what's happening, so this is a good change.

## Conclusion

Even though I didn't expect Mojang to change this, it is a somewhat obvious change. Their developers also need good communication and the messed up version number doesn't help internally. I'm very happy Mojang has decided to change their versioning system to make the whole Minecraft ecosystem easier to browse. The new drop system isn't a decision everyone supports, but we're seeing a lot of backend fixes and improvements with this, which makes me wonder if that was the point. Anyway, it's awesome a game that was €20 a few years ago is still receiving free updates and that the Java devs are fixing their technical debt.
