---
layout: default
---

## Posts

<ul class="post-list">
    {% for post in site.posts %}
        <li>
            <p><a href="{{ post.url }}">{{ post.title }}</a></p>
            <p id="date">{{ post.date | date: "%d - %m" }}</p>
        </li>
    {% endfor %}
</ul>
