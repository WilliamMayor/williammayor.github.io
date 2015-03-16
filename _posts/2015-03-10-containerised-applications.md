---
layout: post
title:  "Containerised Applications with Docker"
date:   2015-03-10
---
This follow on slightly from my post about Vagrant. Vagrant provides you with a development environment isolated from everything else on your machine. It lets you manage separate dependencies for different projects with ease. After I started using Vagrant for a while I found that were some things that didn't quite gel for me. One particular niggling issue was that I wanted to easily spin up and destroy databases for developing, and testing. It seemed lie it should be possible to type a single command and be given a brand new, completely isolated, database to play with. Then destroy that database without worrying about the others. Vagrant didn't quite manage this.

This is where Docker comes in. Docker lets you 'containerise' applications. A container is an extremely light-weight isolated environment. It's not quite a virtual machine because it runs on the same platform as the host machine. It's closer to a sandbox where nothing can leak out unless you explicitly tell it to.

In my example of running disposable databases Docker steps in to produce a container for Postgres, a completely self-sufficient container that holds nothing but a Postgres server. You can use Docker to spin up as many copies of the container as you like, destroying them is just as easy. This way I can build a database for testing that gets written and re-written hundreds of times as unit tests execute, then destroy the entire database without worrying about it. I can spin up a database containing all of the production data and run some attacks against it. I don't even have to worry that I might accidentally discover a way to escalate myself to root and delete all the data. The entire database is running inside the sandbox.

I'm not sure I've got my head around containers yet. It's a different mode of thinking. My instinct is still to create a shared virtualenv and run containers that use it. I think I should be pushing the python environment inside the containers that need it.

I think I need to come back to this post when I've practised Docker a bit more.