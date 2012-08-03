---
date: '2009-01-13 22:55:15'
layout: blog_2009
slug: php-as-a-tiny-database
status: publish
title: PHP as a Tiny Database
wordpress_id: '323'
categories:
- technology
tags:
- code
- php
---

Here's a little bit of code I put together this evening to use PHP as a kind
of miniscule database. OK, so that's a bit of a crap analogy; but hopefully
the idea makes sense...

Oh, and also: it doesn't have a front end of any kind. Because I'm lazy (and I
think it's impossible).

Essentially, the code below generates a random number between 1 and 2
(inclusive), and decides which of the selection of variables should be used
from **$theURL** and **$theAuthor**.

    <?php
        $thePhoto = mt_rand(1, 2);
        $theURL = 'url' . $thePhoto;
        $theAuthor = 'author' . $thePhoto;
        $url1 = 'http://flickr.com/photos/hortulus_aptus/2367460316/';
        $author1 = 'Seán A. O'Hara';
        $url2 = 'http://flickr.com/photos/jule_berlin/571121649/';
        $author2 = 'Jule Berlin';  
    ?>

The parameters generated above are then placed into **index.php** using the following syntax:

    <img src="http://mullr.foo/img<?php echo $thePhoto; ?>.jpg" width="340px" />
    <p><a href="<?php echo $$theURL; ?>">Image</a> by <?php echo $$theAuthor; ?></p>

The procedure for increasing the number of images in the "database" is
relatively simple: upload a new image with the name **img#.jpg** to the
directory, and add **$url#** and **$author#** to the PHP file. Oh, and then
increase the range of random numbers that the script can create.

I'm pretty much completely new to this whole server-side scripting thing, so
this post is as much about you telling me a better way to do it as it is me
sharing this "achievement". In any case, I'm pretty happy - it seems like a
nice way of doing things and only took me an hour to get my head round.

### Comments ###

By [Chris Northwood](http://www.pling.org.uk/) on 14 January 2009 at 01:09:

> It's certainly an interesting way of doing things. A more traditional approach
> would be something along the lines of a multi-dimensional array:
> 
> <code>&lt;?php
> 
> $db = array(
> 
> array('author' =&gt; 'Seán A. O'Hara', 'url' =&gt;
> 'http://flickr.com/photos/hortulus_aptus/2367460316/'),
> 
> array('author' =&gt; 'Jule Berlin', 'url' =&gt;
> 'http://flickr.com/photos/jule_berlin/571121649/')
> 
> )
> 
> $thePhoto = mt_rand(0, count($db)-1);
> 
> $myelement = $db[$mt_rand];
> 
> ?&gt;
> 
> &lt;img src="http://mullr.foo/img.jpg" width="340px" /&gt;
> 
> &lt;a href=""&gt;Image&lt;/a> by </code>
> 
> 
> This then avoids the nasty $$ thing you've got above
> 

By [Alex Muller](http://alex.mullr.net/blog/) on 14 January 2009 at 11:06:

> Cheers Chris - I had no idea how to do arrays in PHP, but it's something I'll
> have a look at :)
> 
