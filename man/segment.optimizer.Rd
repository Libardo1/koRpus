\name{segment.optimizer}
\alias{segment.optimizer}
\title{A function to optimize MSTTR segment sizes}
\usage{
segment.optimizer(txtlgth, segment = 100, range = 20, favour.min = TRUE)
}
\arguments{
  \item{txtlgth}{Integer value, size of text in tokens.}

  \item{segment}{Integer value, start value of the segment
  size.}

  \item{range}{Integer value, range around \code{segment}
  to search for better fitting sizes.}

  \item{favour.min}{Logical, whether as a last ressort
  smaller or larger segment sizes should be prefered, if in
  doubt.}
}
\value{
A numeric vector with two elements: \item{seg}{The
optimized segment size} \item{drop}{The number of tokens
that would be dropped using this segment size}
}
\description{
This function calculates an optimized segment size for
\code{\link[koRpus:MSTTR]{MSTTR}}.
}
\details{
When calculating the mean segmental type-token ratio
(MSTTR), tokens are divided into segments of a given size
and analyzed. If at the end text is left over which won't
fill another full segment, it is discarded, i.e.
information is lost. For interpretation it is debatable
which is worse: Dropping more or less actual token
material, or variance in segment size between analyzed
texts. If you'd prefer the latter, this function might
prove helpful.

Starting with a given text length, segment size and range
to investigate, \code{segment.optimizer} iterates through
possible segment values. It returns the segment size which
would drop the fewest tokens (zero, if you're lucky).
Should more than one value fulfill this demand, the one
nearest to the segment start value is taken. In cases,
where still two values are equally far away from the start
value, it depends on the setting of \code{favour.min} if
the smaller or larger segment size is returned.
}
\examples{
segment.optimizer(2014, favour.min=FALSE)
}
\seealso{
\code{\link[koRpus:lex.div]{lex.div}},
\code{\link[koRpus:MSTTR]{MSTTR}}
}
\keyword{LD}

