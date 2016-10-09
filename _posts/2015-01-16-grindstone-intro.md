---
layout: post
title:  "Grindstone - The Introduction"
date:   2015-01-16
tags: story how-does
---
So this is the first of my blog posts on my projects; grindstone - the introduction.

Grindstone is a small Python/Flask web application that downloads calendar data to calculate the amount of time the user has been working on a particular project or for a particular company. It then compares this to a list of earning goals to tell the user whether or not they've worked enough hours to meet their goals.

I built this because I already track my freelance work exclusively via calendars. I invoice people based on the hours my calendar tells me I've worked. Want I wanted was an easy way to pull in the information from everywhere and work out whether or not I needed to pull an all-nighter in order to pay rent.

Here's a screenshot:

![grindstone screenshot](/images/posts/2015/01/grindstone.png)

*Aside: I didn't know whether or not to blur out some of the details here. I haven't and now everyone knows how much pocket money I give myself.*

The interface is designed to be clean and informative. I've used quite iOS-style blue borders and colours to show progress as well as to split content. The date bar at the top of the page lets you move around the calendar and see how you're doing over different date ranges. The bar at the bottom was meant to display some quick summary facts. At the moment it tells you some totals and then works out how long your working week was over that time period and how much you got paid, on average, per hour.

This is an entirely personal project. I don't image anyone else will ever be interested in using grindstone.
 This assumption has influenced quite heavily some of my engineering decisions. For instance, there are no users, password, or log ins. If you have access to the server you have access to all of the data and there's only data for a single person, me. Configuring the app means hand editing a text file, so adding a  new goal or calendar is a bit of a pain.

What new things did I learn making grindstone? I learned that Google APIs are a massive headache and that I should avoid them wherever possible. I started with the idea of querying each Google calendar via the API and processing the already parsed events. I settled on using Google Calendar to create a public URL that can be used to download the entire `.ics` file.

I also started to use [Vagrant](https://www.vagrantup.com/) for the first time. I've been a longtime user of virtualenv for my Python development. I really like the clean separation of libraries that mean I can have distinct projects with distinct requirements. What Vagrant does is allows me to separate projects onto completely different machines. Not only are my Python library requirements separated, so are my databases, my OS libraries, etc. etc. No longer do I need to have a single PostgreSQL database on my laptop that is shared by every project. Nice.

Vagrant has a lot of other bonuses that I'm sure I'll start to take advantage of when I get to grips with my current workflow. I've already dabbled in creating re-usable and sharable provisioning scripts that mean getting started on a new machine becomes easier. Tools like Atlas and others from Hashicorp seem really interesting and I'm looking forward to getting my hands on them.

That's all for now.
