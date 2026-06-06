+++
title = "Everything in git? No way!"
description = "I've been having fun with computers ever since I discovered Scratch and had followed a beginner HTML course during a fall break. I also got into Minecraft quite heavily and developed my own armor hud mod after a few years. This is when I started using github, where everyone was storing their code. At this point in time I was still dragging files into the github interface, just to create some sort of backup and allow other people to browse the code."
date = 2026-06-06
updated = 2026-06-06

[taxonomies]
tags = [ "tech", "programming", "self-hosting", "indieweb" ]
+++

> This post is my first submission for an [Indieweb Carnival](!todo), with this edition titled: "No way!?".

I've been having fun with computers ever since I discovered [Scratch](https://scratch.mit.edu/) and had followed a beginner HTML course during a fall break. I also got into Minecraft quite heavily and developed my own [armor hud mod](https://github.com/legoraft/simple-armor-hud) after a few years. This is when I started using github, where everyone was storing their code. At this point in time I was still dragging files into the github interface, just to create some sort of backup and allow other people to browse the code.

After installing Linux, I got into github even more due to the use of dotfiles[^1] in Linux customization. Dragging everything into github became annoying very quick, so I figured out how to create an ssh key and use `git add .`, `git commit -m` and `git push`. At this time I became more interested in programming and CLI tools and I bumped into this amazing [video](https://www.youtube.com/watch?v=WgV6M1LyfNY) by NoBoilerPlate.

## Git

The moment I watched this video something triggered in me. You can version control **everything** in git? No way! This was amazing. I started by just adding my notes to a git repository, after which basically every programming project I created started with a `git init`. I learned more about branching, merging and [conventional commits](https://www.conventionalcommits.org/)[^2]. I also started to use plain text formats a lot. I wrote almost everything in markdown and added everything to a local git repo.

This got even more unhinged when I started self-hosting my own git forge. This way I had a place to store all my private data as well. I started with [plain text accounting](https://plaintextaccounting.org/), [todo.txt](https://github.com/todotxt/todo.txt), [cooklang](https://cooklang.org) and created even more stupid small lists, projects and sites. My git craziness rose to an insane height, but it brought a lot of good ideas, tools and methods with it I still use nowadays.

## Cooling down

After making everything I own a git repo, I realized that a lot of that was unnecessary. I still use git, _a lot_, but I've become a bit more intentional about using it. Coding projects always go into git immediately, as version controlling different versions is very handy to check out some old experiments or branches. My personal life, however, has become somewhat of a mixed bag.

I mentioned plain text accounting, which is awesome, but a _lot_ of work to set up. You also kind of need to know how you want to structure everything and these tools have a lot of crazy functions that can be awesome or just a time sink. I want to get back into plain text accounting, but create a plan at the start and try some more things. Then it maybe could become my 'true' accounting strategy. My recipes are still a mix between markdown, my brain and cooklang. I've recently started using `cook report`[^3] to generate zola-ready markdown files and am looking to create a simple cookbook theme I can use to browse my recipes everywhere and anywhere.

My notes and todos have taken a whole other turn. I've been an avid [obsidian](https://obsidian.md) user, but this second brain idea really breaks down when you just want to write something down quickly. I've moved back to paper for notes, planning and my agenda. This is something that works better for me, especially since I'm not next to a computer during work and still need to write things down.

## Conclusion

Understanding git was truly a "No way!?" moment for me, but it took me about two years to understand that a cool tool doesn't need to replace everything on the face of the earth. If you've never tried git, try it out and take a look at all the tools I've mentioned here, check if something works for you. I am a big proponent of open standards and plain text, but don't try and shove your whole life in a `.txt` file, as there are a lot of different things that can work best together. Life's messy and rigid tools don't really account for that. Git does, though, just run `git log` or `git branch` and take a look at all the things you've tried out!

[^1]: Hidden files in Linux, often used for configuration. Check out my [dots](https://codeberg.org/legoraft/dots)!
[^2]: As programmers do, there is [discussion](https://sumnerevans.com/posts/software-engineering/stop-using-conventional-commits/) on the use of these.
[^3]: It's very early stages, but works like a charm, check out the [docs](https://cooklang.org/docs/use-cases/reports/).
