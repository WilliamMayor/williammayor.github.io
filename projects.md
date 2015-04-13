---
layout: page
title: The Projects I'm Pursuing
date: 04 Jan 2015
categories: projects index
---
My 2015 New Year's resolution is to do 12 projects in 12 months. I found in 2014 that I had a giant list of project ideas that I was very excited about. I found in 2015 that I had completed next to none of these projects and only a few had made it beyond the back of the envelope. My resolution is to pick a single project each month that I will focus on and that by the end of the month I will have created a minimum viable product.

Below are the projects I'm working on and links to any blog posts about them. Where available I've also provided a GitHub link so you can see the code for yourself.

## January
January's project is to finalise those few 2014 projects that are near MVP status.

### [grindstone](https://github.com/WilliamMayor/grindstone)

A very personal project that tracks the time I spend working for various companies. It calculates how much money I've earned and compares it to a list of earning goals. I use this to track how well I'm managing to save money.

{% for post in site.categories.grindstone %}
  - {{ post.date | date: "%b %-d, %Y" }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

### [distorteddecade.com](http://distorteddecade.com/)

A simple website I'm building for a friend's band.

{% for post in site.categories.distorteddecade %}
  - {{ post.date | date: "%b %-d, %Y" }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

### [scytale.xyz](http://scytale.xyz)

A website and educational course I'm creating that introduces encryption and communication security topics to ~16 year olds.

{% for post in site.categories.scytale %}
  - {{ post.date | date: "%b %-d, %Y" }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

### [wowchi.xyz](http://wowchi.xyz)

A website that lets you search World of Warcraft achievements and build a queue of achievements to attempt.

{% for post in site.categories.wowchi %}
  - {{ post.date | date: "%b %-d, %Y" }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

## February
February's project is to build a couple of website and services for my family. First up is a website that my fiancee and I will use to provide details of our upcoming wedding. Then I want to build an email/address book/calendar/family tree service for my family to use.


Future projects will be decided as I progress through January and February. I have a large pile of things to pick from, it's a matter of which takes my fancy.