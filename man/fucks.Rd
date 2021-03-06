\name{fucks}
\alias{fucks}
\title{Readability: Fucks' Stilcharakteristik}
\usage{
fucks(txt.file, ...)
}
\arguments{
  \item{txt.file}{Either an object of class
  \code{\link[koRpus]{kRp.tagged-class}}, a character
  vector which must be be a valid path to a file containing
  the text to be analyzed, or a list of text features. If
  the latter, calculation is done by
  \code{\link[koRpus:readability.num]{readability.num}}.}

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
Calculates Fucks' Stilcharakteristik ("characteristics of
style"). In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index value.

This formula doesn't need syllable count.
}
\examples{
\dontrun{
  fucks(tagged.text)
}
}
\references{
Fucks, W. (1955). Der Unterschied des Prosastils von
Dichtern und anderen Schriftstellern. \emph{Sprachforum},
1, 233--244.
}
\keyword{readability}

