\name{LIX}
\alias{LIX}
\title{Readability: Bj\"ornsson's L\"asbarhetsindex (LIX)}
\usage{
LIX(txt.file, parameters = c(char = 6, const = 100), ...)
}
\arguments{
  \item{txt.file}{Either an object of class
  \code{\link[koRpus]{kRp.tagged-class}}, a character
  vector which must be be a valid path to a file containing
  the text to be analyzed, or a list of text features. If
  the latter, calculation is done by
  \code{\link[koRpus:readability.num]{readability.num}}.}

  \item{parameters}{A numeric vector with named magic
  numbers, defining the relevant parameters for the index.}

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
This function calculates the readability index
("l\"asbarhetsindex") by Bj\"ornsson. In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index value.

This formula doesn't need syllable count.
}
\examples{
\dontrun{
  LIX(tagged.text)
}
}
\references{
Anderson, J. (1981). Analysing the readability of english
and non-english texts in the classroom with Lix. In
\emph{Annual Meeting of the Australian Reading
Association}, Darwin, Australia.

Anderson, J. (1983). Lix and Rix: Variations on a
little-known readability index. \emph{Journal of Reading},
26(6), 490--496.
}
\keyword{readability}

