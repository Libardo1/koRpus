\name{flesch}
\alias{flesch}
\title{Readability: Flesch Readability Ease}
\usage{
flesch(txt.file, hyphen = NULL, parameters = c(const = 206.835, asl = 1.015,
  asw = 84.6), ...)
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

  \item{parameters}{Either a numeric vector with named
  magic numbers, defining the relevant parameters for the
  index, or a valid character string naming a preset for
  implemented languages (\code{"de"}, \code{"es"},
  \code{"nl"}, \code{"fr"}).}

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
Calculates the Flesch Readability Ease index. In contrast
to \code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the Flesch RE value.

Certain internationalisations of the parameters are also
implemented. They can be used by setting \code{parameters}
to \code{"es"} (Fernandez-Huerta), \code{"es-s"}
(Szigriszt), \code{"nl"} (Douma), \code{"de"} or
\code{"fr"} (Kandel-Moles). If \code{parameters="PSK"}, the
revised parameters by Powers-Sumner-Kearl (1958) are used
to calculate a grade level.
}
\examples{
\dontrun{
flesch(german.tagged.text, parameters="de")
}
}
\seealso{
\code{\link[koRpus:flesch.kincaid]{flesch.kincaid}} for
grade levels,
\code{\link[koRpus:farr.jenkins.paterson]{farr.jenkins.paterson}}
for a simplified Flesch formula.
}
\keyword{readability}

