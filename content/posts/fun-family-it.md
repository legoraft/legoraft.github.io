+++
title = "Family IT should be fun"
description = "I read a lot of posts in different technical communities, be it hacker news, reddit or github, I love lurking and reading what people think about almost everything that's tech-adjacent. Nobody on the internet seems to agree on anything, but a thing I see a lot of consensus on (especially within the self-host and linux community) is that you shouldn't be the 'family IT person'. I think that this shouldn't be such a cut-and-dry opinion, as there are a lot of different sides to this."
date = 2026-05-24
updated = 2026-05-24

[taxonomies]
tags = [ "tech", "self-hosting" ]
+++

I read a lot of posts in different technical communities, be it hacker news, reddit or github, I love lurking and reading what people think about almost everything that's tech-adjacent. Nobody on the internet seems to agree on anything, but a thing I see a lot of consensus on (especially within the self-host and linux community) is that you **shouldn't** be the "family IT person". I think that this shouldn't be such a cut-and-dry opinion, as there are a lot of different sides to this.

## Family help desk

As far as I know, most families have a "techie" person in their family, who you'll call or text when something breaks, doesn't work or you just need advice on a new phone. If you're reading this blog, chances are that you are that person, just like me. For a lot of people[^1], this isn't a fun thing to do. I've seen comments on how hosting a service for someones creates an SLA[^2] you need to maintain or helping your grandma set up a laptop means you should be prepared to be called every day. These comments are almost certainly based on a real experience someone has had, but it shouldn't be directly linked to being the help desk for your family.

In science and statistics you hear a lot about the difference between correlation and causation. Most of these (admittedly, not so good) experiences all happened to someone who is the family help desk. This is correlation, people who are the help desk have these experiences. That doesn't mean that this is also the cause of this behaviour. Setting up your grandma's new laptop doesn't mean she will call you thrice a day.

## Responsibility

I'm quite a tech-savvy person, who loves messing about with computers and other stuff. For me, hacking around in Linux or spinning up yet another docker container is fun. Every computer I touch turns into a project. Heck, I'm writing this on my Macbook of which I swore it'd be only used for university and I have 2 IDEs and a boatload of CLI tools on it I'll never use for my studies. This probably is relatable for a lot of people who run a homelab or like to code at times.

The big difference between me and my family members is that they see their computer or phone as a _tool_, not a _project_. If you give them an Arch Linux install with Hyprland, but they can't run word, they'll probably be annoyed, because the tool they have doesn't work the way they expect it. Imagine you get a drill for a few hundred bucks and you need to run `pacman -Syu` before you can drill holes in your wall. What use does that tool have?

This means that if you're advising family members on technical choices you got to keep in mind that they can have a significantly different view on their digital environment than you. As the person helping or advising them, this means that you need to inform them and empower them to be able to do their own things. Perhaps your grandma doesn't need a custom Arch Linux install on their laptop and she would be just as fine running a new [Macbook Neo](https://www.apple.com/macbook-neo/). You should be very conscious of what your family member wants. Do they need to keep cost low? Do they run any windows-only apps? Are they daring enough to try something new?

Answering these questions means that they can have their mission-critical stuff, while you give them advice to do everything as best as possible. Every person has their own criteria for a "good" thing. This doesn't mean that you can't teach them some good principles. You can explain a lot of things like open source software, password managers or that the desktop isn't the place for all your files. You just shouldn't expect people to do exactly what you tell them, and sometimes their way will just be like that (also, an address book is a perfectly fine password manager if someone prefers that).

On self-hosting services, don't think you have an SLA. You're probably giving them something new to use and you just should be clear what the ramifications are. For example, the worst thing that can happen to a jellyfin server is that people can't watch a show when they've just set up a movie night. With files, you should be more careful as people can store their sensitive and critical information on those servers (even though you told them a thousand times not to!). Just choose what people can lose or where they can suffer 9 eights of uptime instead of [8 nines](https://en.wikipedia.org/wiki/High_availability#Percentage_calculation).

## Have fun

My favorite approach of being the family help desk is to be appreciative. Being the family help desk should be appreciated, because you stay in touch with those family members that call with their problems. Of course, if you're the IT person for your family, you will be called more often for often benign reasons, but you still can help them, often with a simple google search, and make them happy. Even though they probably could've looked it up themselves, you're a lot faster at it. Think of the plumber that can fix a leak within minutes. You could've done it, but the plumber is way faster.

The most important part truly is to just have fun. Your grandma probably is very happy that she has a new laptop and your family could be very grateful for watching all your legally acquired media on your jellyfin server. Just be happy that you can be of value for a lot of people and that you're appreciated. And remember, you're a human too. If you don't have time or the person calling asks for to much, you can just say no, no matter how difficult that can be.

[^1]: A loud portion of the internet at least.
[^2]: A Service Level Agreement, a contract that says that you should supply certain services to the other party.
