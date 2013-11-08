---
layout: post
title: SSL Certificates and Apache
tags: [apache, sysadmin, security]
---
So, I've had this VPS from [BitFolk](http://bitfolk.co.uk) for a while now and I've never done much with it. I hosted a personal website on there with the intention of writing a blog. That never worked out although I got really interested in building my own blogging engine. I've also hosted the [iiiScience](http://iiiscience.williammayor.co.uk) and [UCLU techSoc](http://www.uclutech.com) websites on there for a while. I certainly wasn't getting my money's worth.

I decided the other day that I was going to put Jenkins on my VPS and get it to do some work for me. It could help build [mercury](https://github.com/WilliamMayor/mercury) for me; it could check that my websites were up and running; and maybe more things in the future. Getting Jenkins installed on Tomcat wasn't too big a deal, I just followed the instructions I found lying around on the Internet and hey presto! Java 6, Tomcat 6 and Jenkins, all up and running.

The problem I discovered was that none of it was secure. Tomcat was open to the public, its manager and host-manager apps required some HTTP BasicAuth to get to but if the communication was happening over an unsecured connection there was really nothing protecting me. The same goes for Jenkins. If someone were to sniff the traffic between me and my VPS it would be trivial to discover my username and password and then get access to the Tomcat/Jenkins admin pages. I'm not sure what damage can be done with a Tomcat admin user account but I'm willing to bet it would be a PITA for me to fix if it ever happened. The obvious solution then, is to secure the channel using SSL. Here's what I did.

Snake Oil or Regular Oil?
-------------------------

The first question to answer was whether or not to use a self-signed certificate or not. Generating a self-signed certificate seems quite easy and the majority of tutorials I could find of setting up SSL and Apache seemed to assume that's what you'd do. It's far from the best solution though. With a self-signed certificate you're not providing a visitor any reassurances that you are who you say you are. Sure the channel is encrypted and nobody else can read what's being sent, but what good's that if I think I'm talking to HSBC when it's actually 'Dodgy Dave from Down the Road'. I dabbled for a while with using a free signed certificate from [StartSSL](http://www.startssl.com/). It's a pretty good service, although it comes with a very ugly and unintuitive UI. I got a certificate for my Tomcat subdomain and then realised that if I wanted a certificate for any other domains I would need to go through the same process (it takes at least a couple of hours of waiting) for each. On top of that I couldn't have my naked domain secured at all. It's a free service, you can't complain.

So back to the drawing board. Pay for a better certificate, one with wildcards and subject alternate names (SANs)? Or make my own, self-signed, certificate. At this point in time I've elected to go the free route. I'm already paying for the VPS and the domain, I might not even need the certificate enough to warrant paying for it.

Creating the Certificate
------------------------

There are lots of tutorials that help you create certificates of your own. I'm on a Linux machine so OpenSSL seemed like a good choice. I found an excellent guide, explaining SANs as well, on [grevi.ch](http://grevi.ch/blog/ssl-certificate-request-with-subject-alternative-names-san), thanks! Below is mostly a re-print of that guide.

First up, configure OpenSSL to be aware of your SANs. A SAN seems to be essentially a note in your certificate that