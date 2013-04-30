---
date: '2009-01-15 23:16:20'
layout: blog_2009
slug: os-x-leopard-on-a-samsung-nc10-netbook
status: publish
title: OS X Leopard on a Samsung NC10 Netbook
wordpress_id: '328'
categories:
- mac
- technology
tags:
- apple
- leopard
- netbook
---

And now, something I've wanted to try for about two weeks now: installing Mac
OS X Leopard on the Samsung NC10 Netbook. I followed [a guide from
Wired](http://blog.wired.com/gadgets/2008/12/samsung-hc-10-h.html) to try and
get me through the process. On the "things you need" list, we have:

* A Samsung NC10 (or similar)
* A USB drive of some description
* [A copy of OSX86](http://thepiratebay.org/torrent/4307757/MSIWindosx86.iso)
  courtesy of The Pirate Bay
* The [OSX86 tools](http://blog.wired.com/gadgets/files/OSX86Tools_1.0.149.zip) from Wired

![Master Boot Record](http://alexmuller.s3.amazonaws.com/static/blog/2009-01-15-mbr.png)

Format the USB drive as Mac OS X Extended (Journaled) with "Master Boot
Record" selected from the options drop-down.

Choose to restore the OSX86 ISO that you've downloaded via BitTorrent to the
newly formatted USB drive.

Use the OSX86Tools application to set up the USB drive: click Install EFI/Run
FDISK, and then choose "Run Script". Enter your password in the terminal
window that appears, then choose 4 to run Chameleon EFI. You'll have to select
which disk and partition you want it installed on. This is the part I had a
little issue with - I had to use the exact version that Wired provides (don't
update if it prompts you to).

Eject the drive from your Mac, connect it to the NC10. Boot from the drive,
and go through the fairly mundane install process (hint: it's just like every
other install of OS X, pretty much). Reboot, and you have a copy of Leopard
running on non-Apple hardware.

This is another place where I had a problem. Because I've got Ubuntu installed
on the same machine, I'm using [Grub](http://en.wikipedia.org/wiki/GNU_GRUB)
to choose which partition to boot to. In Ubuntu, you can `cd /boot/grub/` and
edit the file called `menu.lst`. Copy the layout of one of the existing ones
(down the bottom), replacing the location of that partition with the location
of your OS X partition.

And there you have it. A lot works out the box, including Bluetooth; not
included is support for USB and Airport, but that may be forthcoming. One
thing I was concerned about was that the USB ports might not work in Windows
after installing Leopard either (the Wired article is ambiguous) but they do.
This video's a little crummy, but I needed something to make this post
interesting (and distract me from the fact that I've been in my room revising
for a few days):

<iframe src="http://player.vimeo.com/video/2842151?color=d0dae9" width="601" height="453" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

[Hackintosh](http://vimeo.com/2842151) from [Alex Muller](http://vimeo.com/alexmuller) on [Vimeo](http://vimeo.com).

### Comments ###

By [Kevin Spencer](http://kevinspencer.org) on 16 January 2009 at 04:55:

> Nice job mate.  How are you liking OS X?  I bought a MacBook Pro back in
> November, my first Mac, and I love it.  I'm an old *nix geek so I love having
> all my fave utilities at the command line.

By [Alex Muller](http://alex.mullr.net/blog/) on 16 January 2009 at 18:20:

> I've been on a MacBook for a couple of years now, but OS X is just so much nicer
> than Windows. I couldn't handle XP on the NC10 (more than anything, it was
> actually pretty dull). As for Ubuntu - while nice, I'm not up to learning
> another OS inside out right now.

By [Adam Zethraeus](http://zethrae.us) on 19 January 2009 at 22:29:

> Lack of USB support sounds like a real pain. I would otherwise seriously
> consider running a hacked up mac as my main machine. My experience with Windows
> 7 makes me realize why I love macs.

By Michael on 13 December 2009 at 19:02:

> Does the Wi-Fi work? Are there any problems with it/ would there be if I were to
> just fully install OS X?

By [Alex Muller](http://alex.mullr.net/blog/) on 14 December 2009 at 09:35:

> I’m afraid I could never get Wi-Fi working properly, so I had to uninstall it -
> you could give it a go with an up-to-date copy of OSX86 though, there might have
> been some progress since I first wrote this.

By [Jasper](http://blog.icreatemagazine.nl) on 16 January 2010 at 13:37:

> Hi,
> 
> I would really love an update for this post. I have a NC10 and I'm starting to
> get unhappy with XP and this might be worth trying ;) But since I'm new to this,
> I would love an expert to try it first :P

By tom on 03 February 2010 at 19:23:

> unless i missed it, how big of a memory stick will i need, as the iso file is
> 6gb, just thinking will an 8gb be enough

By [Alex Muller](http://alex.mullr.net/blog/) on 03 February 2010 at 20:45:

> Jasper: I'd love to have an update to this at some point, I'll see what I can
> do.
> 
> Tom: I used an external hard drive, but I suppose an 8GB memory stick would be
> fine too!
