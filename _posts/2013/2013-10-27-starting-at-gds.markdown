---
date: '2013-10-27 12:30:00'
layout: blog_2012
slug: starting-at-gds
status: publish
title: Starting at the Government Digital Service
description: |
  GDS is doing a lot of things really well with
  how it manages code and the developer community.
---

Aside from the fact that the day-to-day work is interesting and challenging and the
people are fantastic, there are a few things that particularly stick out to me as
brilliant about [GDS][gds].

## Second line support

This seems quite polarising for developers, but I love it. Each week a different
developer pairs with somebody from the operations team to spend a week improving
infrastructure and responding to any production alerts and issues. I finished my
first rotation on second line as part of the operations team about a month ago.

It's such a great learning experience. You learn a load about the GOV.UK infrastructure,
as well as an awful lot about hosting, monitoring and deployment. It's also a great way
to work with people outside your normal team on a short-term basis.

## It's all out in the open

Almost every line of code that technically can be is hosted at [www.github.com/alphagov][alphagov]
(obviously the passwords, keys and other fun stuff is elsewhere). British taxes pay for the
lights to stay on, so it's only right that the public can see what GDS is up to as much as
possible. As with everything on this site, that's my opinion and it may or may not be shared
by GDS. You'd have to ask someone who's allowed to speak on behalf of the Cabinet Office.

In my team (I work on the [Performance Platform][performance-platform]), we're making data
about transactional services available for service managers (the people who run, for example,
the passport application process as part of HM Passport Office). But it's a nice side effect
that the data is there, online, for everyone to see. The same thought process as for the code
applies: you're paying for those transactions to take place. You should be able to see how
they're performing.

Informally we work off the idea that for every page we build, you should be able to pull the
data out yourself. For the [Licensing "Form submissions" graph][licensing],
[the JSON's available][licensing-json]. It's not documented (yet), but you can use developer
tools in the browser to view the AJAX requests.

Once more: all my opinion, possibly (but definitely not necessarily) shared by GDS. I might
turn up to work on Monday and find out it's all changing.

## Fixing broken windows

[James][jabley] [mentioned][release-comment] the [broken windows theory][broken-windows]
after I made a change to one of our internal apps recently. When I
[wrote about a company's tools in April][internal-tools], that theory was exactly what I
was getting at - I just didn't know it had a name. If you make it easy to fix problems, as
GDS does by giving all staff the ability to push changes to almost every repository, the
state of the code and the community constantly improves. I love tinkering with little bits
and pieces that keep things running along smoothly, and internal apps are a great place to do that.

The [Service Manual][service-manual] is another great example. Because it's so easy to
fix typos and reword badly written sentences, I've
[committed to it far more than I would have expected][service-manual-my-commits]. And that's
mostly because I can do it in a couple of minutes when I'm bored. And even better than that,
making the repository public means that a load of people from outside government have submitted fixes too.

GDS isn't perfect by any means, but the good outweighs the not-so-good by an absolutely huge margin.

The [tenth design principle][design-principles-tenth] says it all:

> Make things open: it makes things better

[gds]: https://gds.blog.gov.uk/
[alphagov]: https://www.github.com/alphagov
[performance-platform]: https://www.gov.uk/performance
[licensing]: https://www.gov.uk/performance/licensing
[licensing-json]: https://www.performance.service.gov.uk/data/licensing/application?period=week&end_at=2013-08-19T00%3A00%3A00%2B00%3A00&start_at=2013-06-17T00%3A00%3A00%2B00%3A00
[jabley]: https://twitter.com/jabley
[release-comment]: https://github.com/alphagov/release/pull/32#issuecomment-26136206
[broken-windows]: https://en.wikipedia.org/wiki/Broken_windows_theory
[internal-tools]: /blog/2013/04/internal-tools-and-infrastructure/
[service-manual]: https://www.gov.uk/service-manual
[service-manual-my-commits]: https://github.com/alphagov/government-service-design-manual/commits?author=alexmuller
[design-principles-tenth]: https://www.gov.uk/design-principles#tenth
