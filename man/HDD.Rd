\name{HDD}
\alias{HDD}
\title{Lexical diversity: HD-D (vocd-d)}
\usage{
HDD(txt, rand.sample = 42, char = FALSE, ...)
}
\arguments{
  \item{txt}{An object of either class
  \code{\link[koRpus]{kRp.tagged-class}} or
  \code{\link[koRpus]{kRp.analysis-class}}, containing the
  tagged text to be analyzed.}

  \item{rand.sample}{An integer value, how many tokens
  should be assumed to be drawn for calculating HD-D.}

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
This function calculates HD-D, an idealized version of
vocd-d (see McCarthy & Jarvis, 2007). In contrast to
\code{\link[koRpus:lex.div]{lex.div}}, which by default
calculates all possible measures and their progressing
characteristics, this function will only calculate the HD-D
value, and characteristics are off by default.
}
\examples{
\dontrun{
HDD(tagged.text)
}
}
\references{
McCarthy, P.M. & Jarvis, S. (2007). vocd: A theoretical and
empirical evaluation. \emph{Language Testing}, 24(4),
459--488.
}
\seealso{
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}},
\code{\link[koRpus]{kRp.tagged-class}},
\code{\link[koRpus]{kRp.TTR-class}}
}
\keyword{LD}

