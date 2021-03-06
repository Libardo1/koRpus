\name{treetag}
\alias{treetag}
\title{A function to call TreeTagger}
\usage{
treetag(file, treetagger = "kRp.env", rm.sgml = TRUE, lang = "kRp.env",
  apply.sentc.end = TRUE, sentc.end = c(".", "!", "?", ";", ":"),
  encoding = NULL, TT.options = NULL, debug = FALSE, TT.tknz = TRUE,
  format = "file", stopwords = NULL, stemmer = NULL)
}
\arguments{
  \item{file}{Either a connection or a character vector,
  valid path to a file, containing the text to be analyzed.
  If \code{file} is a connection, its contents will be
  written to a temporary file, since TreeTagger can't read
  from R connection objects.}

  \item{treetagger}{A character vector giving the
  TreeTagger script to be called. If set to
  \code{"kRp.env"} this is got from
  \code{\link[koRpus:get.kRp.env]{get.kRp.env}}.  Only if
  set to \code{"manual"}, it is assumend not to be a
  wrapper script that can work the given text file, but
  that you would like to manually tweak options for
  tokenizing and POS tagging yourself. In that case, you
  need to provide a full set of options with the
  \code{TT.options} parameter.}

  \item{rm.sgml}{Logical, whether SGML tags should be
  ignored and removed from output}

  \item{lang}{A character string naming the language of the
  analyzed corpus. See
  \code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}} for all
  supported languages.  If set to \code{"kRp.env"} this is
  got from \code{\link[koRpus:get.kRp.env]{get.kRp.env}}.}

  \item{apply.sentc.end}{Logical, whethter the tokens
  defined in \code{sentc.end} should be searched and set to
  a sentence ending tag.}

  \item{sentc.end}{A character vector with tokens
  indicating a sentence ending. This adds to TreeTaggers
  results, it doesn't really replace them.}

  \item{encoding}{A character string defining the character
  encoding of the input file, like \code{"Latin1"} or
  \code{"UTF-8"}. If \code{NULL}, the encoding will either
  be taken from a preset (if defined in \code{TT.options}),
  or fall back to \code{""}. Hence you can overwrite the
  preset encoding with this parameter.}

  \item{TT.options}{A list of options to configure how
  TreeTagger is called. You have two basic choices: Either
  you choose one of the pre-defined presets or you give a
  full set of valid options: \itemize{ \item {\code{path}}
  {Mandatory: The absolute path to the TreeTagger root
  directory. That is where its subfolders \code{bin},
  \code{cmd} and \code{lib} are located.} \item
  {\code{preset}} {Optional: If you choose one of the
  pre-defined presets here: \itemize{ \item
  {\code{"de-utf8"}} {German, UTF-8} \item {\code{"de"}}
  {German} \item {\code{"en"}} {English} \item
  {\code{"es-utf8"}} {Spanish, UTF-8} \item {\code{"es"}}
  {Spanish} \item {\code{"fr-utf8"}} {French, UTF-8} \item
  {\code{"fr"}} {French} \item {\code{"it-utf8"}} {Italian,
  UTF-8} \item {\code{"it"}} {Italian} \item {\code{"ru"}}
  {Russian, UTF-8} } you can omit all the following
  elements, because they will be filled with defaults. Of
  course this only makes sense if you have a working
  default installation.} \item {\code{tokenizer}}
  {Mandatory: A character string, naming the tokenizer to
  be called. Interpreted relative to \code{path/cmd/}.}
  \item {\code{tknz.opts}} {Optional: A character string
  with the options to hand over to the tokenizer. You don't
  need to specify "-a" if \code{abbrev} is given. If
  \code{TT.tknz=FALSE}, you can pass configurational
  options to \code{\link[koRpus:tokenize]{tokenize}} by
  provinding them as a named list (instead of a character
  string) here.} \item {\code{tagger}} {Mandatory: A
  character string, naming the tagger-command to be called.
  Interpreted relative to \code{path/bin/}.} \item
  {\code{abbrev}} {Optional: A character string, naming the
  abbreviation list to be used. Interpreted relative to
  \code{path/lib/}.} \item {\code{params}} {Mandatory: A
  character string, naming the parameter file to be used.
  Interpreted relative to \code{path/lib/}.} \item
  {\code{lexicon}} {Optional: A character string, naming
  the lexicon file to be used. Interpreted relative to
  \code{path/lib/}.} \item {\code{lookup}} {Optional: A
  character string, naming the lexicon lookup command.
  Interpreted relative to \code{path/cmd/}.} \item
  {\code{filter}} {Optional: A character string, naming the
  output filter to be used. Interpreted relative to
  \code{path/cmd/}.} } You can also set these options
  globally using
  \code{\link[koRpus:set.kRp.env]{set.kRp.env}}, and then
  force \code{treetag} to use them by setting
  \code{TT.options="kRp.env"} here. Note: If you use the
  \code{treetagger} setting from kRp.env and it's set to
  \code{TT.cmd="manual"}, \code{treetag} will treat
  \code{TT.options=NULL} like \code{TT.options="kRp.env"}
  automatically.}

  \item{debug}{Logical. Especially in cases where the
  presets wouldn't work as expected, this switch can be
  used to examine the values \code{treetag} is assuming.}

  \item{TT.tknz}{Logical, if \code{FALSE} TreeTagger's
  tokenzier script will be replaced by \code{koRpus}'
  function \code{\link[koRpus:tokenize]{tokenize}}.  To
  accomplish this, its results will be written to a
  temporal file which is automatically deleted afterwards
  (if \code{debug=FALSE}). Note that this option only has
  an effect if \code{treetagger="manual"}.}

  \item{format}{Either "file" or "obj", depending on
  whether you want to scan files or analyze the text in a
  given object, like a character vector. If the latter, it
  will be written to a temporary file (see \code{file}).}

  \item{stopwords}{A character vector to be used for
  stopword detection. Comparison is done in lower case. You
  can also simply set \code{stopwords=tm::stopwords("en")}
  to use the english stopwords provided by the \code{tm}
  package.}

  \item{stemmer}{A function or method to perform stemming.
  For instance, you can set \code{SnowballC::wordStem} if
  you have the \code{SnowballC} package installed. As of
  now, you cannot provide further arguments to this
  function.}
}
\value{
An object of class \code{\link[koRpus]{kRp.tagged-class}}.
If \code{debug=TRUE}, prints internal variable settings and
attempts to return the original output if the TreeTagger
system call in a matrix.
}
\description{
This function calls a local installation of TreeTagger[1]
to tokenize and POS tag the given text.
}
\details{
Note that the value of \code{lang} must match a valid
language supported by
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}}. It will
also get stored in the resulting object and might be used
by other functions at a later point. E.g., \code{treetag}
is being called by
\code{\link[koRpus:freq.analysis]{freq.analysis}}, which
will by default query this language definition, unless
explicitly told otherwise. The rationale behind this is to
comfortably make it possible to have tokenized and POS
tagged objects of various languages around in your
workspace, and not worry about that too much.
}
\examples{
\dontrun{
# first way to invoke POS tagging, using a built-in preset:
tagged.results <- treetag("~/my.data/speech.txt", treetagger="manual", lang="en",
   TT.options=list(path="~/bin/treetagger", preset="en"))
# second way, use one of the batch scripts that come with TreeTagger:
tagged.results <- treetag("~/my.data/speech.txt",
   treetagger="~/bin/treetagger/cmd/tree-tagger-english", lang="en")
# third option, set the above batch script in an environment object first:
set.kRp.env(TT.cmd="~/bin/treetagger/cmd/tree-tagger-english", lang="en")
tagged.results <- treetag("~/my.data/speech.txt")

# after tagging, use the resulting object with other functions in this package:
readability(tagged.results)
lex.div(tagged.results)

## enabling stopword detection and stemming
# if you also installed the packages tm and SnowballC,
# you can use some of their features with koRpus:
set.kRp.env(TT.cmd="manual", lang="en", TT.options=list(path="~/bin/treetagger",
   preset="en"))
tagged.results <- treetag("~/my.data/speech.txt",
   stopwords=tm::stopwords("en"),
   stemmer=SnowballC::wordStem)

# removing all stopwords now is simple:
tagged.noStopWords <- kRp.filter.wclass(tagged.results, "stopword")
}
}
\author{
m.eik michalke \email{meik.michalke@hhu.de}, support for
various laguages was contributed by Earl Brown (Spanish),
Alberto Mirisola (Italian) and Alexandre Brulet (French).
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
\code{\link[koRpus:freq.analysis]{freq.analysis}},
\code{\link[koRpus:get.kRp.env]{get.kRp.env}},
\code{\link[koRpus]{kRp.tagged-class}}
}
\keyword{misc}

