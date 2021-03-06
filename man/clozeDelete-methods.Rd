\docType{methods}
\name{clozeDelete}
\alias{clozeDelete}
\alias{clozeDelete,kRp.taggedText-method}
\title{Transform text into cloze test format}
\usage{
clozeDelete(obj, ...)

\S4method{clozeDelete}{kRp.taggedText}(obj, every = 5, offset = 0,
  replace.by = "_", fixed = 10)
}
\arguments{
  \item{...}{Additional arguments to the method (as
  described in this document).}

  \item{obj}{An object of class "kRp.tagged"}

  \item{every}{Integer numeric, setting the frequency of
  words to be manipulated. By default, every fifth word is
  being transformed.}

  \item{offset}{Either an integer numeric, sets the number
  of words to offset the transformations. Or the special
  keyword \code{"all"}, which will cause the method to
  iterate through all possible offset values and not return
  an object, but print the results (including the list with
  changed words).}

  \item{replace.by}{Character, will be used as the
  replacement for the removed words.}

  \item{fixed}{Integer numberic, defines the length of the
  replacement (\code{replace.by} will be repeated this much
  times). If set to 0, the replacement wil be as long as
  the replaced word.}
}
\value{
And object of class kRp.tagged, with an additional list
\code{cloze} in its \code{desc} slot, listing the words
which were changed.
}
\description{
If you feed a tagged text object to this function, its text
will be transformed into a format used for cloze deletion
tests. That is, by default every fifth word (or as
specified by \code{every}) will be replaced by a line. You
can also set an offset value to specify where to begin.
}
\details{
The option \code{offset="all"} will not return one single
object, but print the results after iterating through all
possible offset values.
}

