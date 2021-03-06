\name{harris.jacobson}
\alias{harris.jacobson}
\title{Readability: Harris-Jacobson indices}
\usage{
harris.jacobson(txt.file, word.list, parameters = c(char = 6), hj1 = c(dword
  = 0.094, asl = 0.168, const = 0.502), hj2 = c(dword = 0.14, asl = 0.153,
  const = 0.56), hj3 = c(asl = 0.158, lword = 0.055, const = 0.355),
  hj4 = c(dword = 0.07, asl = 0.125, lword = 0.037, const = 0.497),
  hj5 = c(dword = 0.118, asl = 0.134, lword = 0.032, const = 0.424), ...)
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
  the short Harris-Jacobson word list for grades 1 and 2
  (english) should be used.}

  \item{parameters}{A numeric vector with named magic
  numbers, defining the relevant parameters for all
  formulas of the index.}

  \item{hj1}{A numeric vector with named magic numbers for
  the first of the formulas.}

  \item{hj2}{A numeric vector with named magic numbers for
  the second of the formulas.}

  \item{hj3}{A numeric vector with named magic numbers for
  the third of the formulas.}

  \item{hj4}{A numeric vector with named magic numbers for
  the fourth of the formulas.}

  \item{hj5}{A numeric vector with named magic numbers for
  the fifth of the formulas.}

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
This function calculates the revised Harris-Jacobson
readability formulas (1 to 5), as described in their paper
for the 18th Annual Meeting of the College Reading
Association (Harris & Jacobson, 1974). In contrast to
\code{\link[koRpus:readability]{readability}}, which by
default calculates all possible indices, this function will
only calculate the index values.

This formula doesn't need syllable count.
}
\examples{
\dontrun{
harris.jacobson(tagged.text, word.list=harris.jacobson.wl)
}
}
\references{
Harris, A.J. & Jacobson, M.D. (1974). Revised
Harris-Jacobson readability formulas. In \emph{18th Annual
Meeting of the College Reading Association}, Bethesda.
}
\keyword{readability}

