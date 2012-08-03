---
date: '2011-02-01 20:49:57'
layout: blog_2010
slug: everything-should-be-a-permalink
status: publish
title: Everything should be a permalink
wordpress_id: '707'
categories:
- technology
tags:
- development
- technology
---

I received this by email, from somebody trying to plan when to book a train
journey:

![Gmail screenshot,
link](http://alexmuller.s3.amazonaws.com/static/blog/2011-02-01-virgintickets-link.png)

This illustrates something that’s [become really clear to
me](http://twitter.com/alexmuller/statuses/5665210731859968) since I started
work: people don’t get links. Being able to quickly dissect a link is
something I (and, I suspect, most geeks) have definitely taken for granted.

The solution is pretty clear: at any point in your app, a user should be able
to copy the URL and share that exact screen with anybody who should have
access.

I’d change that ticket-booking link to be something link:

`…combinedmatrix.aspx?command=timetable**&from;=kgx&to;=yrk&datetime;=2011-01-12-1915**`

### Comments ###

By [Chris Northwood](http://www.pling.org.uk/) on 01 February 2011 at 21:56:

> Surely the issue here is that it's a bad app design (perhaps the information was
> POSTed, or perhaps it's all being saved in a session cookie serverside) which
> prevents this from working. Even us geeks get caught out sometimes - some sites
> have pretty horrendous, undecipherable URLs which turn out to be a reference to
> a session that expires or is somehow invalidated.

By [Vanderdecken](http://twitter.com/Vanderdecken) on 02 February 2011 at 01:55:

> Wholeheartedly agree. "Being able to quickly dissect a link is something I have
> definitely taken for granted." - I think this all the time. The structure and
> parameters of a URL seem so clear to me, but I guess I'm good at finding
> patterns and codings like that - I can not only split up the parts, but also
> tell what they do - so for example to shorten a Facebook URL, with a little
> trial and error I can remove the parts that are superfluous when linking
> somebody else to a post or photo, such as the little click-journey-tracking
> hierarchies that get added on (or used to, remember their silly /#!/
> structure?).
