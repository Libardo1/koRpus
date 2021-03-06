\name{kRp.text.paste}
\alias{kRp.text.paste}
\title{Paste koRpus objects}
\usage{
kRp.text.paste(txt, replace = c(hon.kRp = "", hoff.kRp = "\\n\\n", p.kRp =
  "\\n\\n"))
}
\arguments{
  \item{txt}{An object of class
  \code{\link[koRpus]{kRp.txt.trans-class}},
  \code{\link[koRpus]{kRp.tagged-class}},
  \code{\link[koRpus]{kRp.txt.freq-class}} or
  \code{\link[koRpus]{kRp.analysis-class}}.}

  \item{replace}{A named character vector to define
  replacements for \code{koRpus}' internal headline and
  paragraph tags.}
}
\value{
An atomic character vector.
}
\description{
Paste the text in koRpus objects.
}
\details{
This function takes objects of either class
\code{kRp.tagged}, \code{kRp.txt.freq} or
\code{kRp.analysis} and pastes only the actual text as is.
}
\examples{
\dontrun{
tagged.text.obj <- freq.analysis("/some/text.txt", corp.freq=my.LCC.data)
kRp.text.paste(tagged.text.obj)
}
}
\keyword{misc}

