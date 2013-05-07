---
layout: layout
title: Projects
---
Projects
========

Here's a list of the projects I am involved in.

pinscher
--------

[pinscher](https://github.com/WilliamMayor/pinscher) is a cool little password manager that I'm writing in Python. Currently it's a python script that uses SQLite3 and PyCrypto to secure a database of credentials. Credentials are secured using two-factor authentication: the database is encrypted with AES-256-CBC encryption using a keyfile on the user's computer, each password is then encrypted again using a user's PIN. The encrypted database can be stored in DropBox and therefore shared across machines, the keyfile should be carefully copied to each permitted machine. The PIN stays in the user's head and is never stored digitally. For easy access I've made an [AlfredApp](http://www.alfredapp.com/) extension.

Read my [blog post](/2013/04/26/pinscher) about it.

iiiScience
----------

[iiiScience](iiiscience.williammayor.co.uk) is a service aimed at academics and researchers in the UK. We want to be able to provide people with easy access to information on what scientific equipment is being used around the country. We let researchers and institutions list their equipment on our site. Users can then contact the owners in order to collaborate and share expertise. We also want to become a platform for sharing how-to guides, best-practises and all those little tricks that you can only otherwise get with experience. It's a fun project, the backend uses Python along with Flask (for the website) and SQLAlchemy (for talking to the PostGreSQL database). It was also a good chance to learn SASS and Compass.

mercury
-------

[mercury](https://github.com/WilliamMayor/mercury) is (or will be) an instant messaging platform designed to teach people about programming and about computer security. The basic idea is that mercury broadcasts messages in plaintext unless extensions are written to encrypt them. The easier encryption techniques (like a Caesar Shift) are easy to program and so make for great beginner lessons. The problem of course is that they're also easy to hack. Extensions can be written to hack mercury messages too. As the encryption gets more complicated so does the programming. Great learning tools and fun to boot.

It's a work in progress. At the moment I'm working on a web interface for building extensions, this is so that students don't have to have complicated (or expensive) development environments to get started. They can head down to the local library if they wish. After that I'm going to work on the messenger itself.