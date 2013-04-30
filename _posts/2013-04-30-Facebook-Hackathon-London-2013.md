---
layout: post
title: Facebook Hackathon London 2013
tags: [facebook, programming]
---
This this weekend (2013/4/28-2013/4/29) I attended the London Facebook Hackathon. 24 hours of hacking together Facebook apps and eating copious amounts of unhealthy food. Awesome.

What did I hack? I had a last minute idea for a cool Facebook App and managed to convince two other people to join me in building it. The idea was to replicate projects such as [SETI at Home](http://setiathome.berkeley.edu/), and [Folding@Home](http://folding.stanford.edu/) but via Facebook. The general idea is that sometimes researchers have a complicated task that they break down into smaller tasks. These small tasks are distributed around lots and lots of computers. Each computer then performs the tiny task and sends the results back to the central server. Each tiny task is relatively easy to complete but add them all together and you have a solution to a really complicated problem. This idea has been used to understand weather patterns, search the heavens for life and a whole bunch of other exciting projects.

The biggest problem with such a system is that the researchers are completely reliant on volunteers. A volunteer usually has to download some software and then leave their computers running whilst the tasks are completed. As you can imagine, it's hard to get people to sign up. We thought we would leverage Facebook to grab volunteers. Links can be shared among friends and that way can reach lots of people really quickly. Also, Facebook social interactions could help provide incentive mechanisms (e.g. can I complete more tasks than my friends, etc. etc.).

The results can be found here: [CrowdTaskingJS](https://apps.facebook.com/crowdtaskingjs/). The code can be found [on Github](http://github.com/CrowdTaskingJS/CrowdTaskingJS/). We used [Node.js](http://nodejs.org/) with libraries like [express](http://expressjs.com/) and [Socket.io](http://socket.io/), we played around with a [Mongo](http://www.mongodb.org/) database as well as a [Redis](http://redis.io/) store, and we hosted the entire thing on [Heroku](https://www.heroku.com/) (see [here](http://crowdtaskingjs.herokuapp.com/canvas/)). Our final product is a platform on which volunteers can sign up to a research project and see their computer complete tasks from inside the browser. Tasks are encoded as JavaScript files that conform to a simple interface. Most browsers can run the tasks and you don't need to install any extra software. There's only one research project up there and it's a pretty simple 'generate prime numbers' task that wouldn't ever really be used for research.

We didn't manage to get task submission up and running (we only had 24 hours) and some of the tasks stats are a bit lacking. Still, I'm proud of what we accomplished in such a small amount of time. We won 5th place (out of lots and lots of teams) so other people must have thought we did pretty well too.

I like Hackathons, not much beats the rush of finding and eradicating an annoying bug at 4am. I think that the team I was on was at a disadvantage because we only met on the day. We didn't share many common skills or tool chains and so it was hard to work together. One person knew Node.js inside and out and the rest of us had to learn pretty quickly. If we'd all come together with common knowledge we would have found the task a lot easier. It was a lot of fun though, I would definitely do it again.


    body {
        font-family: 'SourceSansProLight', Tahoma, sans-serif;
    }
    a {
        text-decoration: none;
        color: @link-color;
        &:hover {
            text-decoration: underline;
        }
    }
    code {
        font-family: 'Ubuntu Mono', monospace;
    }
    pre {
        width: 580px;
        margin-left: 10px;
        border: 1px solid @border-color;
        overflow-x: auto;
    }