\docType{methods}
\name{cTest}
\alias{cTest}
\alias{cTest,kRp.tagged-method}
\title{Transform text into C-Test-like format}
\usage{
cTest(obj, ...)

\S4method{cTest}{kRp.tagged}(obj, every = 2, min.length = 3,
  intact = c(start = 1, end = 1), replace.by = "_")
}
\arguments{
  \item{...}{Additional arguments to the method (as
  described in this document).}

  \item{obj}{An object of class "kRp.tagged"}

  \item{every}{Integer numeric, setting the frequency of
  words to be manipulated. By default, every other word is
  being transformed.}

  \item{min.length}{Integer numeric, sets the minimum
  length of words to be considered (in letters).}

  \item{intact}{Named vector with the elements \code{start}
  and \code{end}. both must be integer values and define,
  which sentences are to be left untouched, counted in
  sentences from beginning and end of the text.  The
  default is to ignore the first and last sentence.}

  \item{replace.by}{Character, will be used as the
  replacement for the removed word halves.}
}
\value{
And object of class kRp.tagged, with an additional list
\code{cTest} in its \code{desc} slot, listing the words
which were changed.
}
\description{
If you feed a tagged text object to this function, its text
will be transformed into a format used for C-Tests:
\itemize{ \item{the first and last sentence will be left
untouched (except if the \code{start} and \code{stop}
values of the \code{intact} parameter are changed} \item{of
all other sentences, the second half of every 2nd word (or
as specified by \code{every}) will be replaced by a line}
\item{words must have at least \code{min.length}
characters, otherwise they are skipped} \item{words an
uneven number of characters will be replaced after the next
character, i.e., a word with five characters will keep the
first three and have the last two replaced} }
}

