---
title: "Markdown tests"
date: 2022-12-20
draft: true
---

This is a test for [Markdown](https://www.markdownguide.org/), I want to test as many features as possible to make my site as markdown-proof as possible.

I like to make lists to name the advantages of some things, like markdown:
- Simple to use
- Nice markup
- Great for blogging

Sometimes I also want to showcase some code I've wrote, like this little `css` snippet from my site:
```css
.posts a {
  text-decoration: none;
  font-size: 1.25rem;
  font-weight: 500;

  color: #090a09;
}
```

I also love the little inline blocks you can use for showing file names, like `markdown-tests.md`.

Images are also a great way of making a point:
<img src="fire.jpg" width="50%" align="right" style="margin: 0.5rem" alt="an image of fire"/>

In markdown there are also a lot of ways to make your text more beautiful, like a little **emphasis** by making text bold, or _italicized_, you can also use ~~strikethroughs~~ or ==highlights== if you need to show something

Perhaps you're more of a mathematician, then you probably want to use things like x^2^, which also work.
For the scientists among us, we also can do things like H~2~O

These are the things I use the most, although I'll sometimes use footnotes [^1]

I try to use task lists to do things I need to do, but I never follow them, so I mostly use them for my groceries, speaking of, I should get some:
- [ ] Milk
- [ ] Eggs
- [x] Butter
- [ ] Sugar

And if I want to quote someone I do that whenever I like to:
> An application should do one thing and do it right <br/>
> ~ Linux philosophy

to make the `<br>` work in this code, I needed to edit my `config.toml` file, which needed these lines:
```toml
[markup]
  [markup.goldmark]
    [markup.goldmark.renderer]
      unsafe = true
```

[^1]: A footnote is handy when you want to explain a complicated term without cluttering up your text.
