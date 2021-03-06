\name{TRI}
\alias{TRI}
\title{Readability: Kuntzsch's Text-Redundanz-Index}
\usage{
TRI(txt.file, hyphen = NULL, parameters = c(syll = 1, word = 0.449, pnct =
  2.467, frgn = 0.937, const = 14.417), ...)
}
\arguments{
  \item{txt.file}{Either an object of class
  \code{\link[koRpus]{kRp.tagged-class}}, a character
  vector which must be be a valid path to a file containing
  the text to be analyzed, or a list of text features. If
  the latter, calculation is done by
  \code{\link[koRpus:readability.num]{readability.num}}.}

  \item{hyphen}{An object of class kRp.hyphen. If
  \code{NULL}, the text will be hyphenated automatically.}

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
This function calculates Kuntzsch's Text-Redundanz-Index
(text redundancy index). In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index value.
}
\examples{
\dontrun{
  TRI(tagged.text)
}
}
\keyword{readability}

