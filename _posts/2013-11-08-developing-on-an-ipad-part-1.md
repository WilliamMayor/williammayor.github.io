---
layout: post
title: Developing on an iPad, Part 1 - Hardware and Services
tags: [developing_ipad]
---
# Developing on an iPad

Welcome to the first part of what might end up being a very long series of posts on how I develop software (and blog) on my iPad. I'm hoping that it will be a good guide for anybody new to this game and also a good reminder for me when I forget what decisions I made and why I made them. 

This first post will cover the hardware and services that I'm using. Part two will cover the software. 

## The Hardware

I'm very excited about this iPad, firstly because it's my first ever iPad (it's actually my first ever tablet), and secondly because it's the brand new iPad Air with, a probably excessive, 128GB of storage. I feel like a [child on Christmas morning](http://youtube.com/watch?v=pFlcqWQVVuU).

I've heard good things about the [Bluetooth keyboard](http://store.apple.com/us/product/MC184LL/B/apple-wireless-keyboard-english?fnode=3e) that you can connect to an iPad. The consensus seems to be that coding is too troublesome if you restrict yourself to just the virtual keyboard. I can definitely see the arguments here and I shall certainly consider making that purchase in the future. However, I've just dropped several hundred pounds on the iPad itself, I'm not sure my wallet can take much more. Especially given the price and quantity of the apps I've been downloading. 

So what else? I also have at my disposal: an iPhone 4S, a MacBook Pro, and a [Debian VPS](http://bitfolk.com/referrals.html). I'm hoping to reduce the work I do on the laptop but I suspect I'll have to resort to a "proper" machine at certain points. I can't see the iPhone being particularly useful. I've had it for a couple of years now and I haven't managed anything sizable on it yet. The VPS I think is going to be very useful; what tasks I can't run on the iPad can be farmed off to the server and the results collected. 

There are some other computers lying around that I might be able to utilise in the future. An old iMac, several [RaspberryPi](http://www.raspberrypi.org/)s, and other odds and ends. 

## The Services

Leaving the software until the end of this post, we'll consider the online services I plan on using. First and foremost is [Github](https://github.com/). I've been a daily user of Github for some years now, it's fantastic. All of [my code](https://github.com/WilliamMayor) is hosted on Github, some of my [research papers](https://github.com/WilliamMayor/P2P2013) are too. It's free (for open source projects) , it works extremely well, and it's very stable. Ideally, I can keep my code in Github, clone it to the iPad for developing, and then push back to Github when I'm done. I've done a bit of Googling and it looks like decent Github-connected text editors are few and far between  I'm going to keep searching but I think I may have to rely on this next service more than I'd like.

[Dropbox](http://www.dropbox.com/)! Everyone likes Dropbox. Cloud storage that is fast, feature rich, and integrated into almost every iPad app there is. If I can't get decent github connectivity going on then the alternative is to sync the iPad to Dropbox and from Dropbox push to github. The Dropbox->github bit can happen on the VPS, leaving the iPad free of `.git` directories. 

[Travis-ci](http://travis-ci.com) is up next. I've had some experience with [Jenkins](http://jenkins-ci.org/) (and [Hudson](http://hudson-ci.org/)) in the past so I'm kind of familiar with continuous integration services. The basic idea is that Travis will detect any pushes to github and automatically run test suites and build commands. The scripting options available are very robust so I think that Travis will be able to provide a lot of functionality that is missing on the iPad. 


