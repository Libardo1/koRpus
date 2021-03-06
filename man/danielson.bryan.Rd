\name{danielson.bryan}
\alias{danielson.bryan}
\title{Readability: Danielson-Bryan}
\usage{
danielson.bryan(txt.file, db1 = c(cpb = 1.0364, cps = 0.0194, const = 0.6059),
  db2 = c(const = 131.059, cpb = 10.364, cps = 0.194), ...)
}
\arguments{
  \item{txt.file}{Either an object of class
  \code{\link[koRpus]{kRp.tagged-class}}, a character
  vector which must be be a valid path to a file containing
  the text to be analyzed, or a list of text features. If
  the latter, calculation is done by
  \code{\link[koRpus:readability.num]{readability.num}}.}

  \item{db1}{A numeric vector with named magic numbers,
  defining the relevant parameters for the first formula
  (regression).}

  \item{db2}{A numeric vector with named magic numbers,
  defining the relevant parameters for the second formula
  (cloze equivalent).}

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
Calculates the two Danielson-Bryan formulas. In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index value.

This formula doesn't need syllable count.
}
\examples{
\dontrun{
  danielson.bryan(tagged.text)
}
}
\keyword{readability}

