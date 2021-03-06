\name{kRp.cluster}
\alias{kRp.cluster}
\title{Work in (early) progress. Probably don't even look at it. Consider it pure magic that is not to be tempered with.}
\usage{
kRp.cluster(txts, lang, TT.path, TT.preset)
}
\arguments{
  \item{txts}{A character vector with paths to texts to
  analyze.}

  \item{lang}{A character string with a valid Language
  identifier.}

  \item{TT.path}{A character string, path to TreeTagger
  installation.}

  \item{TT.preset}{A character string naming the TreeTagger
  preset to use.}
}
\description{
In some future release, this might evolve into a function
to help comparing several texts by features like average
sentece length, word length, lexical diversity, and so
forth. The idea behind it is to conduct a cluster analysis,
to discover which texts out of several are similar to (or
very different from) each other. This can be useful, e.g.,
if you need texts for an experiment which are different in
content, but similar regarding syntactic features, like
listed above.
}
\details{
It is included in this package not really to be used, but
to maybe inspire you, to toy around with the code and help
me to come up with something useful in the end...
}

