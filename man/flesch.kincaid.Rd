\name{flesch.kincaid}
\alias{flesch.kincaid}
\title{Readability: Flesch-Kincaid Grade Level}
\usage{
flesch.kincaid(txt.file, hyphen = NULL, parameters = c(asl = 0.39, asw =
  11.8, const = 15.59), ...)
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
Calculates the Flesch-Kincaid grade level. In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index value.
}
\examples{
\dontrun{
flesch.kincaid(tagged.text)
}
}
\keyword{readability}

