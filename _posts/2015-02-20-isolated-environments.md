---
layout: post
title:  "Isolated Environments with Vagrant"
date:   2015-02-20
tags: learning
---
The best tools that you come across as a software engineer are the ones that eradicate problems you're struggling with and solve problems you didn't even know you had. The tools that I love using are the ones that cured headaches easily, and instantly.

Python's virtualenv tool is one of those. I remember being so frustrated with Python's confusing packaging and dependency management that when I discovered pip and virtualenv I feel in love. What I loved about it was being able to store a project's dependencies completely separately from every other project. If I wanted to experiment with Python 3 I could do that without messing up anything else. I could install libraries with very little care, if I didn't like what the library did removing it was a simple `rm -rf venv`. Every project became virtualenv based, immediately.

Recently I've been introduced to the short comings of virtualenv. Many of my projects use PostgreSQL and a recent update (from 9.3 to 9.4) was a larger headache than I had expected. I updated my machine's version of Postgres and watched as my projects all failed to run, citing database connection problems. The problem, I discovered, is that virtualenv doesn't really provide complete dependency management or isolation. It handles Python library dependencies but nothing at the system level. If you need SASS, virtualenv can't help you, if you need Postgres, or Redis, or MongoDB, again, virtualenv doesn't step in to help.

A solution to this problem is Vagrant. Vagrant makes it easy to create virtual machines and provision them with the software your project needs. With Vagrant you run `vagrant ssh` and find your Terminal inside a totally isolated Debian box (or whatever you choose to install). You can have as many Vagrant boxes as you have projects and each can have their own completely separated environment, from the system itself down to the python libraries and your code.

You get freedoms similar to those granted by virtualenv. You can experiment with anything you like (including entire operating systems) and not have to worry about messing up your other projects. You can quickly spin up a new box that uses Postgres 9.4 and see what happens, no worries about missing 9.3 in other projects.

Vagrant also solves problems that I didn't even know I had. It makes getting started on a new machine simple. All you need to do is install Vagrant (and VirtualBox if you're using it) and run `vagrant up`. You'll be given a brand new development machine with the exact same environment as before. You can now easily add new developers into a project without any ramp up time. You can move over to a different machine (even a different machine with a different OS) and get started really quickly.

It's awesome.
