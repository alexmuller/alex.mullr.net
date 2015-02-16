---
date: '2015-02-16 20:30:00'
layout: blog_2012
slug: pensions-the-basics
status: publish
title: 'Pensions: the basics'
description: |
  Pensions are confusing and a lot of people don't understand them.
  So I've tried to write about the basics.
---

Over the last couple of weeks our chatroom at work has revealed that nobody
completely understands pensions. I find financial planning quite interesting, so this
blog post is my attempt to gather what I think I know about the Civil Service pension
scheme [nuvos][] and hopefully be corrected by people who know more than me.

[nuvos]: http://www.civilservicepensionscheme.org.uk/members/nuvos/

It should be pretty obvious from the fact this is written on my personal blog
that it is absolutely not affiliated with the Civil Service and nobody there
has reviewed it.

## Defined contribution vs defined benefit

The first thing I had to get my head around was that there are at least two different
types of pension scheme around.

The one I'm most used to is defined contribution. This is pretty straightforward because
it's how you expect these kind of things to work intuitively:

- Each month you and your employer both purchase "shares" on your behalf
- These shares are managed by a pension provider
- Over time the value of the shares goes up and down
- As you get closer to retirement, you'd generally expect your pension provider
  to balance your shares so that your pension becomes less volatile (ie more cash than stock),
  so that your entire pension doesn't disappear just before you retire

In the [double-entry bookkeeping][doubleentry] software I use, defined contribution is simple:

```
Account: Income

                      Account                      Credit    Debit
August salary
    Gross salary      Income                       1000
    Net salary        Assets > Current account               600
    Tax               Expenses > Tax                         200
    Pension           Assets > Pension                       200
```

[doubleentry]: https://en.wikipedia.org/wiki/Double-entry_bookkeeping_system

This means that my pension account has a balance which I can monitor over time.

Defined benefit schemes, on the other hand, are a bit weird.

As the name implies, they define the benefit you'll receive when you retire and then the pension
provider adjusts your contributions so that they have enough money in the bank.

Defined benefit plans confuse me because [there doesn't seem to be a way to reconcile the amount
you put in with the amount you get out][money-stack-44463]. It all looks a bit arbitrary.

[money-stack-44463]: https://money.stackexchange.com/questions/44463/double-entry-bookkeeping-for-a-defined-benefit-pension-scheme

In double-entry bookkeeping, I've set it up like this because I don't know what else to do:

```
Account: Income

                      Account                      Credit    Debit
August salary
    Gross salary      Income                       1000
    Net salary        Assets > Current account               600
    Tax               Expenses > Tax                         200
    Pension           Expenses > Pension                     200
```

Instead of storing my pension contribution as an asset and being able to track its change in value,
I write it off as an expense.

## nuvos

nuvos is the default Civil Service pension at the moment. It's a defined benefit scheme that comes
with a 36 page instruction book which is an impenetrable FAQ.

The interesting parts can be distilled into a few bullet points:

- You pay a [contribution rate][rates] that depends on your "pensionable earnings", which is
  pretty much the same thing as your salary
- Each year that you work, your "defined benefit" increases by 2.3% of your pensionable earnings
  from that year
- The benefit from previous years that you've built up increases in line with the cost of living
- At pension age (65ish) you end up with a number which is the amount of money you'll receive
  every year until you die (see, pensions are fun)

[rates]: http://www.civilservicepensionscheme.org.uk/members/contribution-rates/

This is changing slightly, but not massively, in April with the introduction
of the new pension scheme "alpha".
