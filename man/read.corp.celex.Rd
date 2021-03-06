\name{read.corp.celex}
\alias{read.corp.celex}
\title{Import Celex data}
\usage{
read.corp.celex(celex.path, running.words, fileEncoding = "ISO_8859-1",
  n = -1)
}
\arguments{
  \item{celex.path}{A character string, path to a frequency
  file in Celex format to read.}

  \item{running.words}{An integer value, number of running
  words in the Celex data corpus to be read.}

  \item{fileEncoding}{A character string naming the
  encoding of the Celex files.}

  \item{n}{An integer value defining how many lines of data
  should be read if \code{format="flatfile"}. Reads all at
  -1.}
}
\value{
An object of class
\code{\link[koRpus]{kRp.corp.freq-class}}.
}
\description{
Read data from Celex[1] formatted corpora.
}
\examples{
\dontrun{
my.Celex.data <- read.corp.celex("~/mydata/Celex/GERMAN/GFW/GFW.CD",
      running.words=5952000)
freq.analysis("/some/text.txt", corp.freq=my.Celex.data)
}
}
\references{
[1] \url{http://celex.mpi.nl}
}
\seealso{
\code{\link[koRpus]{kRp.corp.freq-class}}
}
\keyword{corpora}

