\name{kRp.text.analysis}
\alias{kRp.text.analysis}
\title{Analyze texts using TreeTagger and word frequencies}
\usage{
kRp.text.analysis(txt.file, tagger = "kRp.env", force.lang = NULL,
  desc.stat = TRUE, lex.div = TRUE, corp.freq = NULL,
  corp.rm.class = "nonpunct", corp.rm.tag = c(), ...)
}
\arguments{
  \item{txt.file}{Either an object of class
  \code{\link[koRpus]{kRp.tagged-class}},
  \code{\link[koRpus]{kRp.txt.freq-class}},
  \code{\link[koRpus]{kRp.analysis-class}} or
  \code{\link[koRpus]{kRp.txt.trans-class}}, or a character
  vector which must be be a valid path to a file containing
  the text to be analyzed.}

  \item{tagger}{A character string defining the
  tokenizer/tagger command you want to use for basic text
  analysis. Can be omitted if \code{txt.file} is already of
  class \code{kRp.tagged-class}. Defaults to
  \code{"kRp.env"} to get the settings by
  \code{\link[koRpus:get.kRp.env]{get.kRp.env}}. Set to
  \code{"tokenize"} to use
  \code{\link[koRpus:tokenize]{tokenize}}.}

  \item{force.lang}{A character string defining the
  language to be assumed for the text, by force.}

  \item{desc.stat}{Logical, whether a descriptive
  statistical analysis should be performed.}

  \item{lex.div}{Logical, whether some lexical diversity
  analysis should be performed, using
  \code{\link[koRpus:lex.div]{lex.div}}.}

  \item{corp.freq}{An object of class
  \code{\link[koRpus]{kRp.corp.freq-class}}. If present, a
  frequency index for the analyzed text is computed (see
  details).}

  \item{corp.rm.class}{A character vector with word classes
  which should be ignored for frequency analysis. The
  default value \code{"nonpunct"} has special meaning and
  will cause the result of \code{kRp.POS.tags(lang,
  c("punct","sentc"), list.classes=TRUE)} to be used.}

  \item{corp.rm.tag}{A character vector with POS tags which
  should be ignored for frequency analysis.}

  \item{...}{Additional options to be passed through to the
  function defined with \code{tagger}.}
}
\value{
An object of class
\code{\link[koRpus]{kRp.analysis-class}}.
}
\description{
The function \code{kRp.text.analysis} analyzes texts in
various ways.
}
\details{
The function is basically a wrapper for
\code{treetag()},\code{freq.analysis()} and
\code{lex.div()}.

By default, if the text has to be tagged yet, the language
definition is queried by calling
\code{get.kRp.env(lang=TRUE)} internally. Or, if
\code{txt.file} has already been tagged, by default the
language definition of that tagged object is read and used.
Set \code{force.lang=get.kRp.env(lang=TRUE)} or to any
other valid value, if you want to forcibly overwrite this
default behaviour, and only then. See
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}} for all
supported languages.
}
\examples{
\dontrun{
kRp.text.analysis("/some/text.txt")
}
}
\references{
[1]
\url{http://www.ims.uni-stuttgart.de/projekte/corplex/TreeTagger/DecisionTreeTagger.html}
}
\seealso{
\code{\link[koRpus:set.kRp.env]{set.kRp.env}},
\code{\link[koRpus:get.kRp.env]{get.kRp.env}},
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}},
\code{\link[koRpus:lex.div]{lex.div}}
}
\keyword{misc}

