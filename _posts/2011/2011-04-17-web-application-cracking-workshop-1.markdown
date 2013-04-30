---
date: '2011-04-17 11:49:44'
layout: blog_2010
slug: web-application-cracking-workshop-1
status: publish
title: 'Web Application Cracking Workshop #1'
wordpress_id: '735'
categories:
- technology
tags:
- development
- security
- software
- web
---

Yesterday I was at the [Hackspace](http://london.hackspace.org.uk/) to learn
about web exploits and security testing from [Darren
McDonald](http://dmcdonald.net/). The following is a write-up of what we did
and learnt that afternoon.

The brief warning we were given at the beginning went something like this: if
you try and compromise somebody's machine without their permission, you stand
a decent chance of being prosecuted under the Computer Misuse Act. Which
probably means never getting a job involving computers again. All the hardware
we were trying to break yesterday was owned by Darren.

To start, we were pointed to the (free) [Burp
Suite](http://portswigger.net/burp/) and shown how to intercept HTTP requests
by proxying traffic through `127.0.0.1:8080`. Every request and response is
shown in Burp before being passed on, with the option to modify any part of
the request before it reaches the server.

As a web developer, I'd always heard that relying on client-side validation
was A Bad Idea, but I'd never seen just what can happen if you don't validate
input server-side. The moral of the story?

**_If you're relying on the browser to provide decent, well-formed information
(including from things like hidden fields): don't._**

We were shown a purposefully badly written online store as an example, where
the cost of a product was a parameter in the request (!). Using something like
Burp, it's easy to set a GET or POST parameter (the cost, in this case) to
whatever you want.

And then it was time to talk about XSS. The simplest test for a cross-site
scripting vulnerability on this site was to enter `<script>alert(1)</script>`
into an input field. The example we were given was a guestbook, and we ended
up with dialog boxes, JavaScript redirects and [XKCD
comics](http://xkcd.com/327/) galore. I was reminded of [the #cashgordon
incident](http://twitter.com/alexmuller/statuses/10872995396) last year.

An hour after the session began, I was thinking about how session cookies are
actually a huge headache, and one I hadn't considered before
[Firesheep](http://codebutler.github.com/firesheep/) got everybody thinking.
Using Darren's session ID, it was easy to steal his session and abuse his "10%
staff discount".

We worked through some examples of pages with progressively better and better
input sanitation, thinking about what the developer had done to protect their
site and how we could get around it.

Moving on, we looked at SQL injection attacks and how you can then tell which
kind of database the site is using. I've been working on limiting the
permissions on, for example, the WordPress database user here, and this
reinforced just how important it is.

Apparently 10—20% of sites have some kind of SQL injection vulnerability,
which is a worryingly large number.

It was great to get a broad overview of the basics of web security, and it's
given me plenty to think about for past and future projects. Brilliant to see
a couple of people interested in joining the Hackspace after attending the
session, too. Many thanks to Darren for taking the afternoon to share his
expertise, and I'm looking forward to the next one.


### Comments ###

By [Vanderdecken](http://twitter.com/Vanderdecken) on 17 April 2011 at 13:36:

> Sounds awzm. With enough free time (and, y'know, being located in London or
> anywhere near it) I'd LOVE to do this kind of thing.

By [Michael](http://cullen-online.com) on 22 April 2011 at 20:24:

> Remember those Dice adverts along the lines of:
> 
> Select * FROM jobs WHERE type = _______ AND location = _______
> 
> Remember how they suddenly disappeared? Well, turns out I found a forum post
> (can't remember where now) where someone said they entered something like ' OR *
> ;DELETE FROM jobs; SELECT * FROM jobs WHERE location='
> 
> Well their jobs database went blank suddenly...
> 
> Turns out the advert was the exact SQL query they used...
