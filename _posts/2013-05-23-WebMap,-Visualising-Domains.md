---
layout: post
title: WebMap, Visualising Domain
tags: [research, webarchive]
---
Currently I'm learning about archiving the web. One very important part in any archive process is collecting the stuff to be archived, in this case, web pages. I've read quite a few articles around the web that talk about how difficult it is to crawl the web. Crawling the web involves having an automated script (called a bot, robot, crawler, spider, and probably more) download a web page, read it and use the contents to inform the next download. In the fashion a bot will 'crawl' over a web site and collect information on it's pages. There are lots of complicating factors (e.g. robots.txt, or `<base />`) that make this a complex job, the sheer size of the web (and of most websites) make it a lengthy job too. I decided to try and make my own web crawler, partly to learn how it's done, how hard it is, and what the important factors are. Partly to see if I could. This page contains the results of version 1 of my crawler.

WebMap (the name of my crawler), takes a domain name and visits every page that it can find under that domain. It ignores the robots.txt directive and doesn't download anything outside of the original domain. It will look at sub domains. It produces an SQLite3 database of all of the pages it found and all of the connections between them. I then pass this database into Gelphi in order to create a nice looking graph of the domain, the Gelphi graph is then exported to a .gexf file that can be read by sigma.js to produce a nice looking webpage.

Here's an example of what my crawler produces. Mouse over the nodes to see what file you're looking at and what that file is conneccted to.

<script src="/research/webmap/sigma.min.js"></script>
<script src="/research/webmap/sigma.parseGexf.js"></script>
<script src="/research/webmap/script.js"></script>
<link rel="stylesheet" type="text/css" href="/research/webmap/style.css">

For this one it was pointed at mediafutures.cs.ucl.ac.uk.
<div class="sigma-parent">
<div class="sigma-expand" id="mf">
</div>
</div>

Here, it's pointed at sec.cs.ucl.ac.uk
<div class="sigma-parent">
<div class="sigma-expand" id="sec">
</div>
</div>