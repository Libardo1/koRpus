\name{C.ld}
\alias{C.ld}
\title{Lexical diversity: Herdan's C}
\usage{
C.ld(txt, char = FALSE, ...)
}
\arguments{
  \item{txt}{An object of either class
  \code{\link[koRpus]{kRp.tagged-class}} or
  \code{\link[koRpus]{kRp.analysis-class}}, containing the
  tagged text to be analyzed.}

  \item{char}{Logical, defining whether data for plotting
  characteristic curves should be calculated.}

  \item{...}{Further valid options for the main function,
  see \code{\link[koRpus:lex.div]{lex.div}} for details.}
}
\value{
An object of class \code{\link[koRpus]{kRp.TTR-class}}.
}
\description{
This is just a convenient wrapper function for
\code{\link[koRpus:lex.div]{lex.div}}.
}
\details{
Calculates Herdan's C. In contrast to
\code{\link[koRpus:lex.div]{lex.div}}, which by default
calculates all possible measures and their progressing
characteristics, this function will only calculate the C
value, and characteristics are off by default.
}
\examples{
\dontrun{
C.ld(tagged.text)
}
}
\seealso{
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}},
\code{\link[koRpus]{kRp.tagged-class}},
\code{\link[koRpus]{kRp.TTR-class}}
}
\keyword{LD}

