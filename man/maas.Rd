\name{maas}
\alias{maas}
\title{Lexical diversity: Maas' indices}
\usage{
maas(txt, char = FALSE, ...)
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
This function calculates Maas' indices (\eqn{a^2} &
\eqn{\lg{V_0}}). In contrast to
\code{\link[koRpus:lex.div]{lex.div}}, which by default
calculates all possible measures and their progressing
characteristics, this function will only calculate the
index values, and characteristics are off by default.
}
\examples{
\dontrun{
maas(tagged.text)
}
}
\seealso{
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}},
\code{\link[koRpus]{kRp.tagged-class}},
\code{\link[koRpus]{kRp.TTR-class}}
}
\keyword{LD}

