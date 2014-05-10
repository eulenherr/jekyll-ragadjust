# Rag Adjust for Jekyll

A [Jekyll](http://jekyllrb.com/) plugin to fix the rag of a html text. Basically, it fixes line breaks that happen in unwanted places.

It is based on the article [Run Ragged](http://24ways.org/2013/run-ragged/) by [Mark Boulton](http://www.markboulton.co.uk/) and the [Rag Adjust JavaScript](https://github.com/nathanford/ragadjust) by [Nathan Ford](http://artequalswork.com/).

Every Jekyll filter plugin is just a ruby function, so it can be used in any ruby context.

## Installation

In your site source root, make a _plugins directory. Place the ragadjust.rb file in there. It will be loaded before Jekyll generates your site.

## Usage and Parameters

In your template, use

    {{ text | ragadjust }}

or

    {{ text | ragadjust:'<parameter>' }}

with one of the following parameters:

* small-words (words with 3 or less characters)
* prepositions (prepositions from the appendix)
* dashes (short or long dashes)
* emphasis (strong, em, b and i html elements)
* numbers (all numbers)

By default, it will do all substitutions. You can use multiple parameters this way:

    {{ text | ragadjust:'<parameter1>' | ragadjust:'<parameter2>' }}

## Questions or Feedback?

I’m [eulenherr](https://twitter.com/eulenherr) on Twitter.

## Appendix: Prepositions matched

* aboard
* about
* above
* across
* after
* against
* along
* amid
* among
* anti
* around
* before
* behind
* below
* beneath
* beside
* besides
* between
* beyond
* concerning
* considering
* despite
* down
* during
* except
* excepting
* excluding
* following
* from
* inside
* into
* like
* minus
* near
* onto
* opposite
* outside
* over
* past
* plus
* regarding
* round
* save
* since
* than
* that
* this
* through
* toward
* towards
* under
* underneath
* unlike
* until
* upon
* versus
* with
* within
* without