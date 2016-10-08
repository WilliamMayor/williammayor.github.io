---
layout: page
title: Tags
date: 08 Oct 2016
type: blog tags
---
Here are my blog posts, organised by their tag.

{% capture tags %}
  {% for tag in site.tags %}
    {{ tag[0] }}
  {% endfor %}
{% endcapture %}
{% assign sortedtags = tags | split:' ' | sort %}

{% for tag in sortedtags %}
<h3 id="{{ tag }}">{{ tag }}</h3>
{% for post in site.tags[tag] %}
- <span>{{ post.date | date: "%b %-d, %Y" }} -</span>[{{ post.title }}]({{ post.url }})
{% endfor %}
{% endfor %}

