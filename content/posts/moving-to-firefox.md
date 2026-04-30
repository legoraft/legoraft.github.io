+++
title = "Moving back to Firefox"
description = ""
date = 2026-04-30
updated = 2026-04-30

[taxonomies]
tags = [ "tech", "web", "browsers", "application" ]
+++

I've used Firefox a lot, but when I heard about the [Zen browser](https://zen-browser.app/), I had to try it. It was a great experience, until a bug appeared that broke my daily workflow, making me go back to Firefox.

## Moving to Zen

About a year ago, I learned about the Zen browser through multiple podcasts and reddit posts. I thought it was interesting, so I tried it for a bit. It was quite refreshing coming from Firefox, with vertical tabs, a transparent sidebar and it felt very _pretty_. I also pinned a few sites I visited frequently to the top, just so I could access them easily. This was great, I could have way more tabs and everything felt better than a horizontal tab bar.

The migration wasn't an issue, I imported my bookmarks, set up my default hardening steps I already used in Firefox and went off to the races. A little issue was getting it on my Linux machine, where it wasn't in the main Arch repos. To fix this, I got the Appimage from Github and used a small, modified script I got from [Justaguylinux](https://codeberg.org/justaguylinux/butterscripts/src/branch/main/browsers/install_browsers.sh) to update it with a single command, which worked great.

## The bug

In my day to day, I use my macbook more often, and over there everything was auto-updating from the default installer, which was all good. Then, a bug appeared. For context, I have a lot of self-hosted services in my homelab, one of which is [glance](https://github.com/glanceapp/glance). This is a simple homepage I use to check my feeds, youtube videos and status of some services. This opens automatically when I open my browser, just so I can procrastinate work for a few minutes by reading some news and watching a video.

Back to the bug. Zen had updated after being closed (as it does) and with the update came a bug where my homepage wasn't opening automatically anymore. No problem, I thought, because it'll get fixed eventually. I [reported](https://github.com/zen-browser/desktop/issues/12154) the bug and went on with my day, opening glance manually after I've closed the browser.

The bug didn't get fixed, though. The issue was reported on january 30th and still isn't fixed at the time of writing. I don't want to get mad at the developers, as they are doing all of this in their free time and I'll respect that. In the meantime, I got to the point where I either wouldn't close my browser for days to keep the homepage or just get annoyed in the morning due to my homepage not opening automatically. Both of these solutions weren't really a good fix. This feature is such a basic browser feature in my opinion, that I started thinking about leaving Zen.

## Leaving Zen

Due to me not really having a good time using my browser, I started looking around at other browsers. I also started evaluating what it was about Zen that was keeping me there. I concluded that about 90% of it was just the vertical tabs, and those are in a lot of places, so I started to shop around for a new browser.

This is where a lot of my constraints come in. I don't really like the chromium engine. I don't have a good reason for this besides rooting for the underdog[^1]. So my options were basically Firefox or Zen. Not a lot to choose from, and I've already used firefox. Then, I remembered that firefox recently added vertical tabs, so I thought I'd check it out.

Finding the vertical tabs wasn't that hard and after enabling them, I kind of liked the idea. I also tried their pinned tabs implementation (like Zen has), but those wouldn't stay put with my aggressive cookie policy[^2]. This was something I could live with, so I decided to try and use firefox for a few days.

## Going back to firefox

The move back was just as uneventful as the move to zen, the engines are the same, so nothing really changes. I imported my bookmarks, changed some security settings I had changed in the last year and got to work. Using firefox with vertical tabs wasn't that different from zen and I got used to it quickly. I still had a few small gripes, though.

First off, I didn't realize how much I loved the floating new tab zen has. It is basically the same as MacOS's spotlight, which is one of my favorite features of MacOS (I use the same shortcut on linux for rofi as well). Second, I liked that zen had almost everything in the sidebar: tabs, downloads and extensions. It is a bit weird to me that the downloads are in the top right again, but I can live with that. I love the full-size address bar inf Firefox, though, it makes it so much more easy to edit urls. This switch also solved another spotlight-related issue. In MacOS 26, spotlight is very slow. When I type "zen" and I have my editor open (zed), it will switch to the editor. This doesn't happen with firefox, as the word is very different.

## Final remarks

I don't really like where Firefox is going, with their really high C-suite pay, stupid projects every so often and their browser not always getting the love it deserves. I want to try new things that aren't Firefox or chromium whenever they pop up, but sometimes development is slow and what you're used to is just fine. I'm happily waiting for both [servo](https://servo.org/) and [ladybird](https://ladybird.org/) to launch, to try them out whenever I have a moment.

I totally understand that the Zen devs probably have a lot on their plate (about 500 issues!) and they don't really care about custom homepages. It's just a too important part of my browser setup to not have, so I went back to firefox. Who knows, if they fix my issue I'll come runnning back again. Until then, I'll stay happily on Firefox waiting for the next "new kid on the block" browser to show up.

[^1]: The underdog in this case being firefox, but I've also been eyeing both [servo](https://servo.org/) and [ladybird](https://ladybird.org/).
[^2]: I clear all cookies and site history on closing my browser for improved security, logging in isn't that hard with a password manager.
