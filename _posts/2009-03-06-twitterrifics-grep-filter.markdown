---
date: '2009-03-06 21:08:44'
layout: blog_2009
slug: twitterrifics-grep-filter
status: publish
title: Twitterrific's grep Filter
wordpress_id: '350'
categories:
- technology
tags:
- code
- mac
- twitter
---

I'd known this for ages, but only just consciously realised that there was a
way to get rid of those tweets that make me sigh painfully to myself. These
regex expressions are what I've put into Twitterrific's built in tweet filter.

### New blog post.*http

I hate these notifications of blog updates on Twitter. This is exactly what
RSS is for, and it works just fine. If I might like your blog, put a link to
it somewhere (ooh, how about that section on Twitter that's handily labelled
_More Info URL_?) and I'll check it out in my own time and decide if I want to
subscribe to it.

### ^@.*http.*twitterfall

I absolutely love [Twitterfall](http://twitterfall.com/) as a product and use
it whenever there's breaking news or events, but following the two developers
means a whole load of replies to people I've never met advertising their
service. Using this is an easy way to keep up with the interesting stuff they
post, while getting rid of the links I don't want to see.

### twizmaster and [mM]ac[hH]eist

These two annoy me. The former is an account that's used as a Twitter quiz
service which people reply to with their answers (and reply to all too much).
The latter? Search it using [search.twitter.com](http://search.twitter.com/)
and see for yourself.

### And how to implement them...?

The easiest way is to use [Secrets.prefpane](http://secrets.blacktree.com/)
and add them to the _Filter Tweettext_ option (separated using the pipe
character, as they're regular expressions.
