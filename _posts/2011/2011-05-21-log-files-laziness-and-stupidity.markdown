---
date: '2011-05-21 10:47:16'
layout: blog_2010
slug: log-files-laziness-and-stupidity
status: publish
title: Log files, laziness and stupidity
wordpress_id: '753'
categories:
- technology
tags:
- linode
- web
- website
---

Up until a few months ago, my site was hosted by the lovely people at
[NearlyFreeSpeech.NET](https://www.nearlyfreespeech.net/). Although I've had a
Linode since the end of 2009 for development, sheer laziness had stopped me
from moving this WordPress installation from NFS to my virtual server.

With hindsight, I did several stupid hosting-related things over the last year
and a bit:

1. If I had just got around to it and moved the site from NearlyFreeSpeech to
    my Linode in January 2010, I would've saved myself $100 in payments to NFS.
2. Why so much? Well, if I had kept an eye on what was going on I would have
    noticed that I had (for some bizarre reason, which we'll chalk up to
    ignorance) disabled log file rotation in the NFS admin interface. Which meant
    that every time somebody visited my site, the log file grew, and grew, and
    grew. And I paid for it. If I had enabled log file rotation, I still would
    have been out $40. But not a hundred.

Here's a graph of my monthly payments to NearlyFreeSpeech:

![NearlyFreeSpeech.NET cost per month](http://alexmuller.s3.amazonaws.com/static/blog/2011-05-21-nfsn-costpermonth.png)

This isn't a knock at NFS: they provide a great service for very reasonable
prices, as long as you don't want to store too much stuff with them. I'd still
happily recommend them for small(ish) sites.

Part of the reason I kept putting off the move was a worry that something
would break and I wouldn't be able to repair it. But the reason I rented a
Linode in the first place was to learn more about how server maintenance and
configuration works; I now know that "it might break" isn't a good enough
excuse.

The next time I procrastinate over something simple that could end up costing
me $100, I'm going to slap myself hard and re-read this post.
