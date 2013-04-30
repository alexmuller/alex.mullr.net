---
date: '2013-04-30 18:30:00'
layout: blog_2012
slug: internal-tools-and-infrastructure
status: publish
title: Internal Tools and Infrastructure
description: |
  I'm starting to wonder whether a company's internal
  tools are as important as the external product.
---

At everywhere I've worked so far I've been disappointed by the tools available
to employees to help them do their jobs better; put simply, I think every
company I've been a part of could have benefitted immensely from a simple
MediaWiki install.

Obviously I'm aware that the lack of such a setup stems from a people problem
rather than a technical one, but it needn't be a people problem. If there's an
argument that can be made against the following setup, I would love to hear
it:

- Install a wiki with text-based markup and an obvious, attributable change
  log. Everyone who gets an email address with your company gets an account.
- The front page can only be edited by people who manage internal company
  communications. It should link to other important parts of the wiki.
- Official policies and company documents can only be edited by a very limited
  number of people.
- Everything else is a free-for-all, open to edit.

To pick on MediaWiki specifically: it is _so_ good at handling all this kind
of stuff, with a visible history with each change attributed to users. I've
never come across an employee both malicious and stupid enough to bother
messing with this theoretical open wiki and doubt I ever will. And if such a
person did exist, they should be handled exactly as though they'd scribbled on
the walls.

This is so appealing to me because I'm the kind of person who loves to read
things. I really enjoy poking through obscure documentation, and if I have the
ability to fix a typo easily, I'll do it. On Wikipedia you might describe that
kind of person as a [WikiGnome][]. People should be encouraged to edit and to
make a mess, because for every well meaning employee who adds something useful
with bad syntax, there's somebody like me who will make it neat. Win-win.

[WikiGnome]: https://en.wikipedia.org/wiki/Wikipedia:WikiGnome

This isn't a technical problem. The software exists, and it's really good. And
it shouldn't be a people problem either.

At this point, I'm probably just rehashing things that people smarter than me
have said before. If I was creating a company I intended to grow from scratch,
here's how I'd start:

1. A MediaWiki install as detailed above.
2. Internal services for employees have sane domain names with one internal
   TLD: `http://calendar.muller/`, `http://wiki.muller/`, `http://mail.muller/`,
   etc
3. Have an external domain that points to the same place, but only for
   services you want available externally: `http://wiki.muller-network.com/`.
4. No, your department doesn't get to buy a domain name, hire a
   designer/developer and host a WordPress site just to show the rest of the
   company how great you are. Use the wiki.
5. Have well publicised places for employees to help you run your company
   better (Running a news site? Can Finance employees easily report typos? ___Why
   not?!___).

## A more concrete example

When I've got [a few minutes in between work][compiling] here I might pop on
to [The Times][] site, see what's going on and find an article that takes my
fancy to skim.

I did that the other day and found a pretty bad typo in an article, a remnant
of an editor suggesting a text change that somehow made it through the CMS
(part of the article text read "`<NO1>10<NO>ten-month` [sic]"). What were my
options at that point?

- Email it to… someone. The editor? The digital editor? The article author?
  Seems like a little bit of overkill to compose an email for a typo and send
  it to people I don't know.
- Leave a comment on the article, or do something else that any "normal" user
  could.

Why is there no third option? Why is there no issue tracker for employees to
report problems, especially public-facing problems that make the company look
less impressive at its core job?

I'm not picking on The Times or The Sun here, just using them as an example
I'm familiar with: I've never seen this done well anywhere, but would love to
hear about examples.

And if there are any good resources about internal tools and infrastructure
(perhaps even long-form articles or books?), I'd love to hear about them.

[compiling]: https://xkcd.com/303/
[The Times]: http://www.thetimes.co.uk/
