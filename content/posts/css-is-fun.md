+++
title = "CSS is fun"
description = "CSS is something that web developers often don't really like or understand. It's one of the classic programmer jokes. I just don't think that this is true or should be true. CSS is one of the most awesome web programming languages we have."
date = 2026-07-03
updated = 2026-07-03

[taxonomies]
tags = [ "programming", "webdev" ]
+++

CSS is something that web developers often don't really like or understand. It's one of the classic programmer jokes[^1]. I just don't think that this is true or should be true. CSS is one of the most awesome web programming languages we have.

## Why use CSS?

First, why would you use CSS instead of the fancy frameworks that already exist, like [tailwind](!todo). To be fair, I haven't used tailwind a lot in my life and my experience with it mostly was following tutorials. But ask yourself: is `<body class="m-4">` really more clear than `body { margin: 4 }`? Both of these do exactly the same thing, but one is way more verbose and explains itself. For the tailwind version, you should know that you've set the margin to 4.

CSS can also be used in static sites easily, just have a stylesheet and reference it from your HTML file. You don't have to do any preprocessing[^2] and can serve everything through a simple webserver. Lastly, it's one of the core web technologies. Learn your tools and become familiar with them!

## How to learn

My favorite way to learn CSS is just by using it. I'm in no way an expert like [Josh Comeau](!todo) or [David Bushell](!todo), but I've taught myself most of my basic CSS knowledge through [The Odin Project](!todo), which is an awesome learning tool for all web development. After that, you can just use it a lot in building your own site(s) and finding more and more snippets and knowledge through use. I have built this site through a lot of flexbox use and it is actually quite simple if you understand the methods.

Understanding what you're writing also helps with learning new things. I've just run in to this fun post on the "full-bleed" layout by [Josh Comeau](!todo), which looks kind of amazing[^3]. You can follow along and learn a lot of new technologies by reading these posts and just have fun with CSS that way.

## Conclusion

CSS is one of the core citizens of web development, together with javascript and HTML. By learning it, you can deepen your knowledge on web development and just do a lot of cool stuff. CSS allows you to do so much awesome things and it is way more verbose than things like tailwind. By using it you can understand the underlying technology better and don't have to document what every `p-*` and `m-*` means. CSS just explains it for you (thanks, earlier you!).

If you're already so familiar with these simple frameworks, keep on using them! Nobody is forcing you to do anything, but just know what is under these abstractions you use day-to-day, and perhaps experiment a bit on your personal stuff (or just create a toy site).

[^1]: "Try to center a div", it can be solved in a lot of ways. Try it yourself!
[^2]: In my case this is somewhat of a lie, as I use sass as a CSS preprocessor.
[^3]: I _really_ don't need to redesign my site for the umpteenth time...
