---
date: '2011-09-22 13:23:38'
layout: blog_2010
slug: site-verification
status: publish
title: Site verification
description: Why is there no standard way for sites to verify a domain owner?
wordpress_id: '773'
categories:
- technology
tags:
- website
---

![Screenshot of a root directory of a web server](http://alexmuller.s3.amazonaws.com/static/blog/2011-09-22-webroot.png)

Is it just the root of my server that looks a bit like this? With the upcoming
launch of Twitter's analytics service for website owners (which will
presumably require some kind of verification), I was wondering:

Why isn't there a standard, similar to
[robots.txt](http://www.robotstxt.org/), for verifying that you own a domain?
`verification.txt`?

![Screenshot of an example verification.txt
file](http://alexmuller.s3.amazonaws.com/static/blog/2011-09-22-verificationtxt.png)
    
    google: Pt8rpfeQC4SCyzABFilZiJC5Tqw8f
    googlehosted: Rb0S6k5si3nOj5rVfPmnzU0pYit
    bing: eXB4oWQR1iVLtKp6Yk2hTq7N7JPjmoX5
    yahoo: y_key_uyxZucu9dvrzsr3PWaYx9G5gLT
    twitter: rqcSmFJIlugbPjXvI6vGuZi7YCiWXYR

I can't think of a reason each service needs more than a few alphanumeric
characters for this.



