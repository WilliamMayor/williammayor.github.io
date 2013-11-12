---
layout: post
title: Developing on an iPad
tags: [developing_ipad]
---
# Part 2 - mox

In [part one](URL) I said I'd cover software in part two, I'm postponing that for part three. Instead I'm going to talk about [mox](http://mox.williammayor.co.uk), the Dropbox monitor script I've written. Briefly, mox looks for files that describe commands and when it finds one, it runs that command. The name of the file identifies the command to be run and the contents of the provide the information required to run it. For example the file `mox_commit` containing the words "this is a commit message", tells mox to commit the local Dropbox files to git, using the provided commit message.

There's information on the [GitHub repo](https://github.com/WilliamMayor/mox/) about to install and run mox, here's a lite version. I have a virtual private server (VPS) that I've installed the [Dropbox daemon](https://www.dropbox.com/install?os=lnx) onto. I've then added mox to my Dropbox and synchronised everything to the VPS. Using [incron](http://inotify.aiken.cz/?section=incron&page=about&lang=en) I can then have mox run every time a change is made inside the Dropbox directory. From my iPad I make changes to files in Dropbox and finish up with a `mox_commit` command file and mox merrily commits what I've done. I then sync up a `mox_push` file and my changes wing their way to GitHub. I've written a fairly basic suite of commands so far, luckily I've got mox in Dropbox so any improvements I make are only a `mox_pull` away. 

It's not the most convenient way to interact with git and GitHub but by using command files like this I ensure that mox support is easy. Any text editor will be able to create the command files and the more involved side of things happens entirely on the server end. I'm more than happy to ditch mox in favour of a git enabled app, if only I could find a good one...
