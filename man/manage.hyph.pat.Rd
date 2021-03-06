\name{manage.hyph.pat}
\alias{manage.hyph.pat}
\title{Handling hyphenation pattern objects}
\usage{
manage.hyph.pat(hyph.pattern, get = NULL, set = NULL, rm = NULL,
  word = NULL, min.length = 3, rm.hyph = TRUE)
}
\arguments{
  \item{hyph.pattern}{Either an object of class
  \code{kRp.hyph.pat}, or a valid language abbreviation for
  patterns included in this package.}

  \item{get}{A character string, part of a word to look up
  in the pattern set, i.e., without the numbers indicating
  split probability.}

  \item{set}{A character string, a full pattern to be added
  to the pattern set, i.e., including the numbers
  indicating split probability.}

  \item{rm}{A character string, part of a word to remove
  from the pattern set, i.e., without the numbers
  indicating split probability.}

  \item{word}{A character string, a full word to hyphenate
  using the given pattern set.}

  \item{min.length}{Integer, number of letters a word must
  have for considering a hyphenation.}

  \item{rm.hyph}{Logical, whether appearing hyphens in
  words should be removed before pattern matching.}
}
\value{
If all action arguments are \code{NULL}, returns an object
of class
\code{\link[koRpus:kRp.hyph.pat-class]{kRp.hyph.pat-class}}.
The same is true if \code{set} or \code{rm} are set and
\code{hyph.pattern} is itself an object of that class; if
you refer to a language instead, pattern changes will be
done internally for the running session and take effect
immediately.  The \code{get} argument will return a
caracter vector, and \code{word} a data frame.
}
\description{
This function can be used to examine and change hyphenation
pattern objects be used with
\code{\link[koRpus:hyphen]{hyphen}}.
}
\details{
You can only run one of the possible actions at a time. If
any of these arguments is not \code{NULL}, the
corresponding action is done in the following order, and
every additional discarded: \itemize{
\item{\code{get}}{Searches the pattern set for a given word
part} \item{\code{set}}{Adds or replaces a pattern in the
set (duplicates are removed)} \item{\code{rm}}{Removes a
word part and its pattern from the set}
\item{\code{word}}{Hyphenates a word and returns all parts
examined as well as all matching patterns} }

If all action arguments are \code{NULL},
\code{manage.hyph.pat} returns the full pattern object.
}
\examples{
\dontrun{
manage.hyph.pat("en", set="r3ticl")
manage.hyph.pat("en", get="rticl")
manage.hyph.pat("en", word="article")
manage.hyph.pat("en", rm="rticl")
}
}
\references{
[1]
\url{http://tug.ctan.org/tex-archive/language/hyph-utf8/tex/generic/hyph-utf8/patterns/txt/}
}
\seealso{
\code{\link[koRpus:kRp.hyph.pat-class]{kRp.hyph.pat-class}},
\code{\link[koRpus:hyphen]{hyphen}}
}
\keyword{hyphenation}

