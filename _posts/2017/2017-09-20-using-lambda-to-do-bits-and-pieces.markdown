---
date: '2017-09-20 11:30:00'
layout: blog_2012
slug: experimenting-with-aws-lambda
status: publish
title: 'Using Lambda to do bits and pieces'
description: |
  Everyone is talking about this new serverless fad so I thought I
  should figure out what it is.
---

I hate the idea of vendor lock-in, but I've found myself using AWS Lambda more and more often this year. And
while neither of these uses are going to change the world, it's lovely to have an easy, maintenance-free way
of running code periodically.

I'm lucky that both of these are just little side projects which I don't need to care too much about, so
I haven't had to think about setting up deployments for a team or monitoring or any of that supporting stuff.
The web interface works well and is quick enough to get set up with.

The Lambda free tier is ludicrously generous for personal use, with 1 million invocations
and about 74 hours of compute time per month (at the maximum 1.5GB memory). If you're cynical then I guess
they do that precisely so that people use it for things like this and then bring it to work.

## Password protected podcast feeds

Earlier this year I switched to [Overcast][overcast] because my old podcast client stopped being updated.
Overcast is great in lots of ways but it doesn't support XML feeds behind a paywall, which was
unfortunate because I'd just started paying for a subscription to LBC's password-protected full show podcasts.

This is a great use-case for Lambda. I wanted a bit of code which would run periodically, access the XML
feed with my password and put it somewhere secret that didn't have a password.

So I wrote a script that does exactly that:

- Use my username and password to get a session cookie from the LBC podcast service
- Download the XML feed I'm interested in
- Put it in an S3 bucket with a filename that only me and my podcast client know

CloudWatch Events schedules this script and runs it every 15 minutes for me and it's worked flawlessly
for the last 5 months.

The [code's available on GitHub][lbc-code].

[overcast]: https://overcast.fm/
[lbc-code]: https://github.com/alexmuller/lambda-proxy-lbc-podcasts

## Renaming Strava activities

This one's a little more nerdy and a little less necessary. I cycle to work and use [Strava][strava]
to see how far I've ridden. But I like things being named properly and I'd rather not have a load of
"Morning Ride" and "Evening Ride" every day on my profile.

I'd been renaming those things in the Strava interface and it took me too long to
realise that it was a huge waste of my time and I should get a computer to do it for me. So
I wrote a little script:

- Get the latest activity from my Strava profile
- Check if it has a boring name like "Morning Ride"
- Use the coordinates of the start and end to figure out if it's a commute
- Rename it

As before CloudWatch Events makes this super easy to schedule with an expression like `rate(1 hour)`.

Again, the [code is on GitHub][strava-code] if you want to see it. As this was the second time I've
used Lambda I had a quick look around for something that might make Lambda easier to develop against
and settled on [python-lambda][] for my simple needs.

[strava]: https://www.strava.com/
[strava-code]: https://github.com/alexmuller/lambda-strava-commute-namer
[python-lambda]: https://pypi.org/project/python-lambda/
