\docType{methods}
\name{summary}
\alias{summary}
\alias{summary,-methods}
\alias{summary,kRp.TTR-method}
\alias{summary,kRp.lang-method}
\alias{summary,kRp.readability-method}
\alias{summary,kRp.tagged-method}
\alias{summary,kRp.txt.freq-method}
\title{Summary methods for koRpus objects}
\usage{
summary(object, ...)

\S4method{summary}{kRp.readability}(object, flat = FALSE)

\S4method{summary}{kRp.tagged}(object)

\S4method{summary}{kRp.TTR}(object)

\S4method{summary}{kRp.txt.freq}(object)
}
\arguments{
  \item{object}{An object of class \code{kRp.lang},
  \code{kRp.readability}, \code{kRp.tagged}, \code{kRp.TTR}
  or \code{kRp.txt.freq}.}

  \item{flat}{Logical, if TRUE only a named vector of main
  results is returned}

  \item{...}{additional arguments affecting the summary
  produced.}
}
\description{
Summary method for S4 objects of classes
\code{\link[koRpus]{kRp.lang-class}},
\code{\link[koRpus]{kRp.readability-class}},
\code{\link[koRpus]{kRp.tagged-class}},
\code{\link[koRpus]{kRp.TTR-class}} or
\code{\link[koRpus]{kRp.txt.freq-class}}.
}
\examples{
\dontrun{
summary(guess.lang("/home/user/data/some.txt", udhr.path="/home/user/data/udhr_txt/"))
}
\dontrun{
summary(flesch(tagged.txt))
}
\dontrun{
tagged.results <- treetag("~/my.data/sample_text.txt", treetagger="manual", lang="en",
   TT.options=list(path="~/bin/treetagger", preset="en"))
summary(tagged.results)
}
\dontrun{
summary(lex.div(tagged.txt))
}
\dontrun{
summary(freq.analysis(tagged.txt))
}
}
\seealso{
\code{\link[koRpus]{kRp.lang-class}},
\code{\link[koRpus]{kRp.readability-class}},
\code{\link[koRpus]{kRp.tagged-class}},
\code{\link[koRpus]{kRp.TTR-class}},
\code{\link[koRpus]{kRp.txt.freq-class}}
}
\keyword{methods}

