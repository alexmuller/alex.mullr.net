---
date: '2012-08-17 10:50:00'
layout: blog_2012
slug: twitter-tweet-nest-dpa
status: publish
title: Twitter, Tweet Nest and the Data Protection Act
description: Twitter are making scary moves. You should own your own data.
categories:
- technology
tags:
- online
- software
- technology
- twitter
---

I've had a copy of [Tweet Nest][tweetnest] running since [the end of 2010][tnblog],
pulling in a copy of my latest tweets twice a day.

[tweetnest]: http://pongsocket.com/tweetnest/
[tnblog]: /blog/2011/02/tweet-nest/

Unfortunately, as the nerds out there might be aware, Twitter allow access to
just your most recent 3200 tweets online. The only way to get a copy of your
older tweets is to [send them a request under the Data Protection Act
1998][twitterdpa]. Folks elsewhere in the EU should have similar legislation to
help them, but I'm not sure about other countries. To their credit, Twitter
complied with the request fully (as far as I can tell) and without making it too
painful for me (depending on how painful you consider having to send a fax).

[twitterdpa]: https://www.privacyinternational.org/blog/what-does-twitter-know-about-its-users-nologs

Here's the first twenty lines of the `alexmuller-tweets.txt` file they sent:

    -----BEGIN PGP SIGNED MESSAGE-----
    Hash: SHA1


    // Generated on:  2012-08-07 22:54:50 GMT+00:00
    ********************
    user_id: 8645442
    created_at: Tue Sep 04 14:02:10 +0000 2007
    created_via: web
    status_id: 246512472
    text: Waiting for the Genius Bar

    ********************
    user_id: 8645442
    created_at: Tue Sep 04 16:47:24 +0000 2007
    created_via: sms
    status_id: 246822322
    text: And I think my phone works...

    ********************

While it was good of them to supply so much information, there was really only
one thing I was interested in: the list of `status_id`s of all my tweets.
Twitter provide the tweet text as part of this request, but strip other
interesting metadata such as location and source.

With that, I used a rubbish bit of Python (with tweepy) to pull every bit of
JSON I could out of the Twitter API and save it to a file:

    import tweepy
    import json
    import time
    import datetime

    # I found this somewhere online. Add a .json attribute to just get the raw JSON.
    @classmethod
    def parse(cls, api, raw):
      status = cls.first_parse(api, raw)
      setattr(status, 'json', json.dumps(raw))
      return status

    tweepy.models.Status.first_parse = tweepy.models.Status.parse
    tweepy.models.Status.parse = parse

    username = "YOUR_USERNAME"
    password = "YOUR_PASSWORD"
    auth = tweepy.auth.BasicAuthHandler(username, password)
    api = tweepy.API(auth)

    myfile = open('list_of_ids_to_grab.txt', 'r') # this is a list of tweet IDs
    jsoncontents = open('tweets.json', 'a') # blank file

    i = 1

    for line in myfile.readlines():
      print i
      print datetime.datetime.now()
      line = line.strip()
      print line
      status = tweepy.api.get_status(line)
      print status.json
      time.sleep(25) # 150 an hour
      donetweets = open('done_tweets.txt', 'a') # blank file
      donetweets.write(line + "\n")
      donetweets.close()
      jsoncontents.write(status.json + "\n")
      i += 1

__WARNING:__ this code is so wonderfully breakable that it will probably set
your machine on fire. You've been warned.

Basic auth calls are limited to 150 an hour, so I left this running overnight to
complete. With the result, you can easily turn it into an array (wrap it in `[]`
and add commas to each line, also known as the poor man's way to code) and then
use [Bryan Veloso's beautiful script][avalonstar] to import it into Tweet Nest.
It's worth importing your older tweets first before setting up a repetitive job
to pull in new ones, or else you'll have to do some MySQL funkery that I can
explain in more detail if you need (yell on Twitter).

[avalonstar]: http://avalonstar.com/journal/2012/jan/11/let-tweetnest-accept-json/

This script highlights a problem that Twitter mentioned again last night: basic
auth will not work for much longer. This is a huge issue for Tweet Nest too, as it
doesn't use OAuth. I'm going to (attempt to) add OAuth support to it in the near
future.

While you're here, let's have a quick look at what else they returned from the
DPA request. Apart from the normal stuff you shouldn't be shocked to know
Twitter have access to (direct messages, favourites, followers and following),
these two things were surprising, though not massively so, to me:

1.  A list of all the phone numbers and email addresses that were stored on my
    phone when I first ran the official Twitter iPhone app (1222 in total).
2.  A list of every IP address that has accessed my account for the last four
    months (it's fairly standard practice to store this).

For what it's worth, I agree entirely with David Singleton, who
[tweeted][dstweet]:

> In case it wasn't clear, I'm pretty worried about the twitter changes too. I
> suspect many of them won't be enforced, but still, dangerous.

[dstweet]: https://twitter.com/dsingleton/status/236381916599836672

No matter how much you trust Twitter, it would be prudent to store a copy of
your own data.
