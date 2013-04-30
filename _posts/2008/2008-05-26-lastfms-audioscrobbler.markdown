---
date: '2008-05-26 19:21:31'
layout: blog_2008
slug: lastfms-audioscrobbler
status: publish
title: Last.fm's Audioscrobbler
wordpress_id: '110'
categories:
- technology
---

Needed a little something to take my mind off everything, so spent the morning
messing around with Javascript, trying out Last.fm's [Realtime Submission
Protocol](http://www.audioscrobbler.net/development/protocol/). It was my
first time playing with any kind of API, Javascript and web forms, so I'm
pretty pleased with the result.

Enter your Last.fm username and password on the [handshake
page](http://alex.mullr.net/lastfm/handshake.php) - this requires a certain
amount of trust, sure... but you can see exactly what the code is doing, and
if you know me, you'll know I'm hardly competent enough to bother storing your
credentials. You'll be taken to a URL beginning
http://post.audioscrobbler.com/ which should have 4 lines, the first being
"OK". On the second line, there's an authentication token that you'll need to
submit tracks.

[![Handshake](http://alex.mullr.net/blog/wp-content/uploads/handshake.png)](http://alex.mullr.net/lastfm/handshake.php)
![handshook.png](http://alex.mullr.net/blog/wp-content/uploads/handshook1.png)

On the [submit page](http://alex.mullr.net/lastfm/submit.php), enter the
authentication token in the first box, followed by the song information. The
timestamp is given at the top (I'm sure there's an easy way to copy that into
the field, but I haven't figured it out yet). Source should be "P" and all the
other boxes should be played with carefully, unless you bother reading the
documentation. The result should be a simple "OK".

[![Submit](http://alex.mullr.net/blog/wp-content/uploads/submit.png)](http://alex.mullr.net/lastfm/submit.php)

The client this submits as is set to "tst", but as "client authors should use
the tst identifier for clients which are not publicly distributed" **please**
don't go messing with it too much. This was just meant to be a fun project.

It looks fairly pretty in Firefox 3 RC1 and Safari 3.1.1. The MD5 hashing
function in Javascript is BSD licensed from
[Paj](http://pajhome.org.uk/crypt/md5/index.html) and the time converter is
free from [Epoch Converter](http://www.epochconverter.com/).

### Comments ###

By adam2z on 26 May 2008 at 23:20:

> cool stuff :)
> 
> http://img.skitch.com/20080526-dxxikwdj1pbexxagb56dbm28hn.png

By [Will Morgan](http://www.illmorgan.com/) on 18 November 2008 at 21:22:

> I suppose with this example you could go on and solve the problem that Last.fm
> has with scrobbling tracks that one might watch on YouTube or discover on
> MySpace. Maybe a bit of Greasemonkey would be needed.

By [Alex Muller](http://alex.mullr.net/blog/) on 19 November 2008 at 14:07:

> Ha, that's exactly what I was going to move on to create... and I should have
> something done within a few weeks of spare-time-coding :)
