---
layout: page
title: The Projects I'm Pursuing
date: 2015-11-30
categories: projects index
---
Here's a list of the things I'm working on in my spare time. Where there's more to talk about I've written things up in blog posts. Enjoy!

## Teaching
I picked up an interest in teaching programming and related things whilst at uni. Programming (even as a hobby) is such a fun thing to do that I really enjoy sharing it with others. I came across programming quite late, I wasn't introduced to it seriously until my first year at uni. I think I missed out on some fantastic coding time because of this. I could have spent my long summers in front of a computer screen instead of wasting them outside with friends!

I currently do all of my teaching with [Villiers Park](http://www.villierspark.org.uk/). They're an educational trust who help students get into university by running courses that (hopefully) challenge and inspire them.

I've written some blog posts about the courses that I've run with them:

{% for post in site.categories.teaching %}
  - {{ post.date | date: "%b %-d, %Y" }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

## [Vantage](https://github.com/vantage-org/vantage)

Vantage is a kind of task runner that I built to help me automate certain repetitive or complex things.

I'm going to write up some blog posts on vantage that will go into some more detail.
