---
layout: page
title: My Blog
date: 04 Jan 2015
categories: blog index
---
Here's a giant listing of all of my posts, dive in and see what you think. If you like what you read you can subscribe to my [RSS feed](/feed.xml/).

{% for post in site.posts %}
  - {{ post.date | date: "%b %-d, %Y" }} - [{{ post.title }}]({{ post.url }})
{% endfor %}
