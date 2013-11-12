---
layout: layout
title: Home
---
# Home

Welcome to www.williammayor.co.uk. I'm William Mayor, a PhD student at University College London. I'm a computer scientist and a crime and security science researcher. Currently I'm working on unstructured peer-to-peer networks, looking at how they could be applied to provide digital archive solutions that are robust and resilient.

Here you'll find my blog, details on research papers I've written, and some stuff about the projects I spend my free time on.

## Recent Entries

{% for post in site.posts limit:5 %}
 * {{ post.date | date: "%B %e, %Y" }} [{{ post.title }}]({{ post.url }})
{% endfor %}
