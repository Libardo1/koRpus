\name{DRP}
\alias{DRP}
\title{Readability: Degrees of Reading Power (DRP)}
\usage{
DRP(txt.file, word.list, ...)
}
\arguments{
  \item{txt.file}{Either an object of class
  \code{\link[koRpus]{kRp.tagged-class}}, a character
  vector which must be be a valid path to a file containing
  the text to be analyzed, or a list of text features. If
  the latter, calculation is done by
  \code{\link[koRpus:readability.num]{readability.num}}.}

  \item{word.list}{A vector or matrix (with exactly one
  column) which defines familiar words. For valid results
  the long Dale-Chall list with 3000 words should be used.}

  \item{...}{Further valid options for the main function,
  see \code{\link[koRpus:readability]{readability}} for
  details.}
}
\value{
An object of class
\code{\link[koRpus]{kRp.readability-class}}.
}
\description{
This is just a convenient wrapper function for
\code{\link[koRpus:readability]{readability}}.
}
\details{
Calculates the Degrees of Reading Power, using the Bormuth
Mean Cloze Score. In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index value.

This formula doesn't need syllable count.
}
\examples{
\dontrun{
  DRP(tagged.text, word.list=new.dale.chall.wl)
}
}
\keyword{readability}

