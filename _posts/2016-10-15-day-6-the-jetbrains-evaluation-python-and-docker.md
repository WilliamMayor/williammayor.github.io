---
layout: post
title: "Day 6: The JetBrains Evaluation - Python and Docker"
date: 2016-10-15
tags: review how-to
---
I have several Python projects that use Vagrant and Docker together. Vagrant keeps all dependencies (including Docker) isolated to a specific virtual machine. No matter what dependency I require, I can install it without having to worry about dependency clashes with other projects. I can also do a clean install of absolutely everything any time I want. Docker lets me spin up complicated dependencies really quickly and easily. It also lets me run multiple versions of the dependency simultaneously. So if I need a PostgreSQL database I can spin one up with mirrored data from production and have another running with test data. Not just different databases within a Postgres server, but entirely distinct servers that don't touch each other at all. What happens to the production data if I point a nasty bug at the test server? Nothing.

Then I started to use PyCharm and realised that this (in my head, perfectly sensible) way of working is not the expected. Running a Python interpreter using Docker?

> Sure, PyCharm can do that.

Running a vagrant virtual machine where Python is installed? 

> Sure, PyCharm does that too. 

Running them together? 

> ...Why would you do that? 

Using multiple Docker containers, one for your app, one for your test suite? 

> ...Why on earth would that be nessessary?

Oh, you wanted to run Docker on your Mac? 

> ...That's going to be tricky. PyCharm makes some assumptions about how Docker works and what sockets it listens to. Your Mac is wrong.

At least that last complaint is fixable:

	$ /usr/local/bin/socat TCP-LISTEN:2375,reuseaddr,fork,bind=localhost UNIX-CONNECT:/var/run/docker.sock

As long as you install socat first:

	$ brew install socat

And then run that `socat` command every time you open up PyCharm...

Hey! PyCharm supports startup tasks! Maybe I can get it to run the socat "External Tool" automatically when I start up the IDE...

> ...Why would you ever need to run an External Tool on Startup?