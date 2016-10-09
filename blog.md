---
layout: page
title: My Blog
date: 04 Jan 2015
type: blog index
---
Here's a listing of all of my blog posts, broken down by category, enjoy! If you like what you see, subscribe to my [RSS feed](/feed.xml). You can also reach out to me via email (see top right).

<h2 id="story">Story</h2>

Story posts are where I try to write an entertaining account of a thing.

{% for post in site.tags.story %}
  - {% include post_link.html post=post %}
{% endfor %}


<h2 id="opinion">Opinion</h2>

Opinion posts are where I try to convince people of things.

{% for post in site.tags.opinion %}
  - {% include post_link.html post=post %}
{% endfor %}


<h2 id="how-to">How-To</h2>

How to posts describe how to do a thing.

{% for post in site.tags.how-to %}
  - {% include post_link.html post=post %}
{% endfor %}


<h2 id="how-does">How Does</h2>

How does posts describe how a thing works.

{% for post in site.tags.how-does %}
  - {% include post_link.html post=post %}
{% endfor %}


<h2 id="review">Review</h2>

Review posts are where I talk about how good a thing is.

{% for post in site.tags.review %}
  - {% include post_link.html post=post %}
{% endfor %}


<h2 id="other">Other</h2>

Sometimes I might tag a post outside of the above categories.

{% capture tags %}
  {% for tag in site.tags %}
    {% if tag[0] != "story" and tag[0] != "opinion" and tag[0] != "how-to" and tag[0] != "how-does" and tag[0] != "review" %}
      {{ tag[0] }}
    {% endif %}
  {% endfor %}
{% endcapture %}
{% assign sortedtags = tags | split:' ' | sort %}

{% for tag in sortedtags %}
{% assign sortedposts = site.tags[tag] | sort | reverse %}
<h3 id="{{ tag }}">{{ tag }}</h3>
{% for post in sortedposts %}
- {% include post_link.html post=post %}
{% endfor %}
{% endfor %}