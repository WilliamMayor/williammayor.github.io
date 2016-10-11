---
layout: post
title: "Day 2: The JetBrains Evaluation - Using PHPStorm"
date: 2016-10-11
tags: review
---
One of my clients has a PHP (Symfony2) website that I'm helping to build. It's quite a complex beast that involves multiple Symfony bundles and plenty of AWS integration. On Day 1 of the evaluation I booted up PHPStorm and pointed it at a fresh clone of the code.

I've been working on the code base for 2 days now, how did I find it?

## The Pros

1. It seemed to deal with vagrant without a hitch. There was a menu dropdown for vagrant commands and could `vagrant up` at the click of a mouse. From that point onwards I had a mini Terminal in my IDE that was pointing at my vagrant machine. Not too different from how I normally work.

2. The database integration stuff was really neat. The vagrant box had a MySQL DB in it and I could very easily connect to it and see the data as just another tab in my editor. It was smooth and useful. I found it quicker and easier to find and edit data using this than I would have done via the command line.

3. It found a bug! We had an API endpoint that we struggle to test because of its heavy reliance on the AWS Glacier service. Our coverage of this method was minimal at best and that showed because the IDE immediately picked up on a missing variable problem. (Obviously no one uses this feature of ours otherwise we would have seen a bug report much sooner.)

## The Cons

1. The code intelligence stuff got in the way quite a lot. It constantly told me that every class I was using had multiple definitions. This made nearly every line in every file have a little yellow warning flag on it. The unused imports feature didn't cope with annotations so it would warn me that I wasn't using an import that I plainly was.

2. It feels harder than it should be to run certain commands. Things like deleting/renaming a file are hard to do because it tries to find where the file is being referenced. The code intelligence wasn't up to this task so deleting a HTML template came with a warning that I would mess up over 200 other files.

## The Untested

I haven't used PHPStorm to run our PHPUnit tests yet. I was mostly working on those shady fear-inducing parts of code base that don't have any tests. I'm hopeful that the test integration will be just as handy as the database stuff.

## Summary

Overall, I liked it. I get the feeling that if I really spent some time setting preferences I could solve the code intelligence stuff and start making the most of the fancier features. There are plenty of keyboard shortcuts that I need to re-learn before I feel as productive as I normally am but that would be true with any tool switch.

I'm certainly not hating it.