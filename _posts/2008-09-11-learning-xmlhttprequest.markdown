---
date: '2008-09-11 13:10:19'
layout: blog_2009
slug: learning-xmlhttprequest
status: publish
title: 'Learning: XMLHttpRequest'
wordpress_id: '215'
categories:
- technology
tags:
- ajax
- lastfm
- programming
- xml
---

Since I first started teaching myself PHP as well as GET and POST methods back
in May to throw together a [scrobbler for
Last.fm](/blog/2008/05/lastfms-audioscrobbler/), I've
wanted to update it to make it a little more... AJAX-y (as the kids are saying
today).

Yesterday, I started looking into the best way to go about doing this and came
across [XMLHttpRequest](http://en.wikipedia.org/wiki/XMLHttpRequest) for the
first time. Sitting here reading about it, the grin on my face grew: this
thing is absolutely perfect.

> XMLHttpRequest is a JavaScript object that was created by Microsoft
> and adopted by Mozilla. You can use it to easily retrieve data
> via HTTP. Despite its name, it can be used for more than just XML
> documents, e.g. for JSON.

> XMLHttpRequest (XHR) is an API that can be used by JavaScript and
> other web browser scripting languages to transfer XML and other text
> data between a web server and a browser.

My plan at the moment is to update [the old
scrobbler](/lastfm/) to make it all pretty and more
friendly, but I keep on running into problems. For example, XMLHttpRequest
only allows data transfer across a single domain name (I might not have
described that well, but that's the case). A
[search](http://www.google.co.uk/search?q=xmlhttprequest+cross-domain) reveals
that this is a fairly widely known thing/issue/whatever, and I'm looking at
ways to get around it at the moment. As I'm on shared hosting and don't have
access to the server configuration, I'm going to try doing it [via
PHP](http://www.phpfour.com/blog/2008/03/06/cross-domain-ajax-using-php/).
[This LiveJournal post](http://premshree.livejournal.com/66129.html) is also
applicable to the situation.

Anyway, that's the stuff I'm getting on with at the moment. Now, back to some
coding...
