\name{kRp.POS.tags}
\alias{kRp.POS.tags}
\title{Get elaborated word tag definitions}
\usage{
kRp.POS.tags(lang = get.kRp.env(lang = TRUE), list.classes = FALSE,
  list.tags = FALSE, tags = c("words", "punct", "sentc"))
}
\arguments{
  \item{lang}{A character string defining a language (see
  details for valid choices).}

  \item{list.classes}{Logical, if \code{TRUE} only the
  known word classes for the chosen language will me
  returned.}

  \item{list.tags}{Logical, if \code{TRUE} only the POS
  tags for the chosen language will me returned.}

  \item{tags}{A character vector with at least one of
  "words", "punct" or "sentc".}
}
\value{
If \code{list.classes=FALSE} and \code{list.tags=FALSE}
returns a matrix with word tag definitions of the given
language. The matrix has three columns: \describe{
\item{\code{tag}:}{Word tag}
\item{\code{class}:}{Respective word class}
\item{\code{desc}:}{"Human readable" description of what
the tag stands for} } Otherwise a vector with the known
word classes or POS tags for the chosen language (and
probably tag subset) will be returned. If both
\code{list.classes} and \code{list.tags} are \code{TRUE},
still only the POS tags will be returned.
}
\description{
This function can be used to get a set of part-of-speech
(POS) tags for a given language. These tag sets should
conform with the ones used by TreeTagger.
}
\details{
Currently supported languages are: \itemize{ \item
\code{"de"} --- German, according to the STTS guidelines
(Schiller, Teufel, Stockert, & Thielen, 1995) \item
\code{"en"} --- English, according to the Penn Treebank
guidelines (Santorini, 1991) \item \code{"es"} --- Spanish,
according to
\url{http://www.ims.uni-stuttgart.de/ftp/pub/corpora/spanish-tagset.txt}
\item \code{"fr"} --- French, according to
\url{http://www.ims.uni-stuttgart.de/~schmid/french-tagset.html}
\item \code{"it"} --- Italian, according to
\url{ftp://ftp.ims.uni-stuttgart.de/pub/corpora/italian-tagset.txt}
and
\url{http://sslmit.unibo.it/~baroni/collocazioni/itwac.tagset.txt},
respectively \item \code{"ru"} --- Russian, according to
the MSD tagset by Sharoff, Kopotev, Erjavec, Feldman &
Divjak (2008) } For the internal tokenizer a small subset
of tags is also defined, available through
\code{lang="kRp"}. If you don't know the language your text
was written in, the function
\code{\link[koRpus:guess.lang]{guess.lang}} should be able
to detect it.

With the element \code{tags} you can specify if you want
all tag definitions, or a subset, e.g. tags only for
punctuation and sentence endings (that is, you need to call
for both "punct" and "sentc" to get all punctuation tags).

The function is not so much intended to be used directly,
but it is called by several other functions internally.
However, it can still be useful to directly examine
available POS tags.
}
\examples{
tags.de <- kRp.POS.tags("de")
}
\author{
m.eik michalke \email{meik.michalke@hhu.de}, support for
Spanish contributed by Earl Brown
\email{eabrown@csumb.edu}, support for Italian contributed
by Alberto Mirisola.
}
\references{
Santorini, B. (1991). \emph{Part-of-Speech Tagging
Guidelines for the Penn Treebank Project}.  URL:
\url{http://www.ims.uni-stuttgart.de/projekte/corplex/TreeTagger/Penn-Treebank-Tagset.pdf}

Schiller, A., Teufel, S., Stockert, C. & Thielen, C.
(1995). \emph{Vorl\"aufge Guidelines f\"ur das Tagging
deutscher Textcorpora mit STTS}.  URL:
\url{http://www.ims.uni-stuttgart.de/ftp/pub/corpora/stts_guide.pdf}

Sharoff, S., Kopotev, M., Erjavec, T., Feldman, A. &
Divjak, D. (2008). \emph{Designing and evaluating Russian
tagsets}. In: Proc. LREC 2008, Marrakech.  URL:
\url{http://corpus.leeds.ac.uk/mocky/}
}
\seealso{
\code{\link[koRpus:get.kRp.env]{get.kRp.env}}
}
\keyword{misc}

