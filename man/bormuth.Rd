\name{bormuth}
\alias{bormuth}
\title{Readability: Bormuth's Mean Cloze and Grade Placement}
\usage{
bormuth(txt.file, word.list, clz=35,
   meanc=c(const=0.886593, awl=0.08364, afw=0.161911,
     asl1=0.021401, asl2=0.000577, asl3=0.000005),
   grade=c(const=4.275, m1=12.881, m2=34.934, m3=20.388,
     c1=26.194, c2=2.046, c3=11.767, mc1=44.285, mc2=97.62,
     mc3=59.538), ...)
}
\arguments{
  \item{txt.file}{Either an object of class
  \code{\link[koRpus]{kRp.tagged-class}}, a character
  vector which must be be a valid path to a file containing
  the text to be analyzed, or a list of text features. If
  the latter, calculation is done by
  \code{\link[koRpus:readability.num]{readability.num}}.}

  \item{clz}{Integer, the cloze criterion score in
  percent.}

  \item{meanc}{A numeric vector with named magic numbers,
  defining the relevant parameters for Mean Cloze
  calculation.}

  \item{grade}{A numeric vector with named magic numbers,
  defining the relevant parameters for Grade Placement
  calculation.  If omitted, Grade Placement will not be
  calculated.}

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
Calculates Bormuth's Mean Cloze and estimted grade
placement. In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index value.

This formula doesn't need syllable count.
}
\examples{
\dontrun{
  bormuth(tagged.text, word.list=new.dale.chall.wl)
}
}
\keyword{readability}

