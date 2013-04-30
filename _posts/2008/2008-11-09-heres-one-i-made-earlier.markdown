---
date: '2008-11-09 16:05:44'
layout: blog_2009
slug: heres-one-i-made-earlier
status: publish
title: Here's One I Made Earlier
wordpress_id: '253'
categories:
- mac
tags:
- apple
- code
- lastfm
- script
---

This is hardly complicated, but it's something that's been bugging me. A few
minutes later, tada: a script that will open the Last.fm page of the currently
playing iTunes track.

    tell application "iTunes"  
    	 try  
    		 set theArtist to artist of current track  
    		 set theSong to name of current track  
    	 end try  
    end tell  

    tell application "System Events"  
    	 open location "http://www.last.fm/music/" & theArtist & "/_/" & theSong  
    end tell  

    -- Alex Muller  
    -- http://alex.mullr.net/blog/  
    -- Do what you want with it...  
    -- Sunday November 9th, 2008

Copy and paste the above into Script Editor (Applications > AppleScript) on
the Mac, and hit compile. As the comment in the code says, this is hardly my
finest piece of work (at least, I hope it isn't), so I'm not too bothered what
you do with it. Enjoy it, whatever happens...
