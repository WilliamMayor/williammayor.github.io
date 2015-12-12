---
layout: post
title:  "Introduction to Vantage"
date:   2015-01-04
categories: vantage
---
When developing websites I like to keep config values in the environment and pull them into the app when needed. I also like to use Docker when developing to easily spin-up dependencies (e.g. databases). Vantage fills a gap I discovered when trying to manage complicated tasks in multiple environments. For instance, deploying an app to production might mean:

1. Run full test-suite
2. Make production DB backup
3. Run DB migrations
4. Deploy code

If one of these tasks fails you want to rollback to the last-known working state. At each step you want to send notifications and set statuses. You'd also prefer this to be run in a continuous integration environment where things are kicked off automatically.

It focuses around the idea of loading different environments for different contexts (e.g. the dev environment contains a local DB URL, the production environment contains a remote DB URL).

I built it because I noticed that I was starting each new project by copying and pasting the huge `manage.py` script I had built.
