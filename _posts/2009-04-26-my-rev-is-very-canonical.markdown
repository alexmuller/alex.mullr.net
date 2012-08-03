---
date: '2009-04-26 12:06:36'
layout: blog_2009
slug: my-rev-is-very-canonical
status: publish
title: My Rev is Very Canonical
wordpress_id: '385'
categories:
- technology
tags:
- code
- html
- internet
- web
---

It's the day before exams start here at university, so needless to say I've
got my priorities straight and am messing around with things on my blog.

There's been big discussion on the Internet for a few weeks now, I think, on
rev=canonical. If you need to get up to speed, take a quick look at Jeremy
Keith's post titled [Revving up](http://adactio.com/journal/1568/). I'll wait,
it's ok. You can even skim or speed read if you're desperate to get back here.

So, the benefits should be obvious. Providing short URLs from a domain that
you have control of, so as not to rely on a third party service. That's how I
interpret it, anyway. It's important to note that big sites like Flickr are
already implementing this, taking links like
`http://www.flickr.com/photos/alexmuller/3473217214/` and turning them into
`http://flic.kr/p/6hV9tq`. Cool stuff, definitely.

I have an incredibly short attention span. There, I said it. If you're like
me, with the concentration of a tired racoon, here's what you need to do.
**Readers, consumers, everybody:** grab the [rev=canonical
bookmarklet](http://simonwillison.net/2009/Apr/11/revcanonical/) created by
Simon Willison and use that to find short URLs before other services.
**Creators, bloggers, people with a website:** if you're using WordPress,
install the [WordPress rev=canonical
plugin](http://wordpress.org/extend/plugins/revcanonical/) which will provide
shortened URLs for your blog or site. Everybody's trying to reduce the impact
that [linkrot](http://en.wikipedia.org/wiki/Link_rot) could have, one step at
a time.

And there you have it. Every article on this blog now has a short(er) URL,
which you can find using the bookmarklet I linked above. Those links will be
good for as long as this blog is around, which is _potentially_ longer than
URL shortening services. The link for this post is
`http://mullr.net/blog/pap`.

### Small update

The plugin broke fairly soon after I implemented it this morning, possibly
because of a 301 redirect I have going on from `mullr.net` to
`alex.mullr.net`. [Duncan Robertson](http://whomwah.com/), the plugin's
author, replied to my plea for help within half a day with a fix for the
issue, so massive thanks to him. I'm sure an updated version will be released
on his site that sorts this problem.

### Comments ###

By [Sam Johnston](http://samj.net/) on 05 May 2009 at 16:10:

> You might want to check out
> [rel=shortlink](http://code.google.com/p/shortlink/)
> as rev=canonical is [quite
> broken](http://www.mnot.net/blog/2009/04/14/rev_canonical_bad).
>
> Sam

By [Alex Muller](http://alex.mullr.net/blog/) on 07 May 2009 at 14:19:

> I'll have a look at that, thanks Sam :)
