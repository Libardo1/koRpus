\name{read.tagged}
\alias{read.tagged}
\title{Import already tagged texts}
\usage{
read.tagged(file, lang = "kRp.env", encoding = NULL,
  tagger = "TreeTagger", apply.sentc.end = TRUE, sentc.end = c(".", "!",
  "?", ";", ":"), stopwords = NULL, stemmer = NULL, rm.sgml = TRUE)
}
\arguments{
  \item{file}{Either a connection or a character vector,
  valid path to a file, containing the previously analyzed
  text.}

  \item{lang}{A character string naming the language of the
  analyzed corpus. See
  \code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}} for all
  supported languages.  If set to \code{"kRp.env"} this is
  got from \code{\link[koRpus:get.kRp.env]{get.kRp.env}}.}

  \item{encoding}{A character string defining the character
  encoding of the input file, like \code{"Latin1"} or
  \code{"UTF-8"}. If \code{NULL}, the encoding will either
  be taken from a preset (if defined in \code{TT.options}),
  or fall back to \code{""}. Hence you can overwrite the
  preset encoding with this parameter.}

  \item{tagger}{The software which was used to tokenize and
  tag the text. Currently, TreeTagger is the only supported
  tagger.}

  \item{apply.sentc.end}{Logical, whethter the tokens
  defined in \code{sentc.end} should be searched and set to
  a sentence ending tag. You could call this a
  compatibility mode to make sure you get the results you
  would get if you called
  \code{\link[koRpus:treetag]{treetag}} on the original
  file.  If set to \code{FALSE}, the tags will be imported
  as they are.}

  \item{sentc.end}{A character vector with tokens
  indicating a sentence ending. This adds to given results,
  it doesn't replace them.}

  \item{stopwords}{A character vector to be used for
  stopword detection. Comparison is done in lower case. You
  can also simply set \code{stopwords=tm::stopwords("en")}
  to use the english stopwords provided by the \code{tm}
  package.}

  \item{stemmer}{A function or method to perform stemming.
  For instance, you can set
  \code{stemmer=Snowball::SnowballStemmer} if you have the
  \code{Snowball} package installed (or
  \code{SnowballC::wordStem}). As of now, you cannot
  provide further arguments to this function.}

  \item{rm.sgml}{Logical, whether SGML tags should be
  ignored and removed from output}
}
\value{
An object of class \code{\link[koRpus]{kRp.tagged-class}}.
If \code{debug=TRUE}, prints internal variable settings and
attempts to return the original output if the TreeTagger
system call in a matrix.
}
\description{
This function can be used on text files containing already
tagged text material, e.g. the results of TreeTagger[1].
}
\details{
Note that the value of \code{lang} must match a valid
language supported by
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}}. It will
also get stored in the resulting object and might be used
by other functions at a later point.
}
\examples{
\dontrun{
tagged.results <- read.tagged("~/my.data/tagged_speech.txt", lang="en")
}
}
\references{
Schmid, H. (1994). Probabilistic part-of-speec tagging
using decision trees. In \emph{International Conference on
New Methods in Language Processing}, Manchester, UK,
44--49.

[1]
\url{http://www.ims.uni-stuttgart.de/projekte/corplex/TreeTagger/DecisionTreeTagger.html}
}
\seealso{
\code{\link[koRpus:treetag]{treetag}},
\code{\link[koRpus:freq.analysis]{freq.analysis}},
\code{\link[koRpus:get.kRp.env]{get.kRp.env}},
\code{\link[koRpus]{kRp.tagged-class}}
}
\keyword{misc}

