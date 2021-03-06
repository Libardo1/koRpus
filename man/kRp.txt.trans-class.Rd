\docType{class}
\name{kRp.txt.trans,-class}
\alias{kRp.txt.trans,-class}
\alias{kRp.txt.trans-class}
\title{S4 Class kRp.txt.trans}
\description{
This class is used for objects that are returned by
\code{\link[koRpus:kRp.text.transform]{kRp.text.transform}}.
}
\section{Slots}{

\describe{
\item{\code{lang}}{A character string,
      naming the language that is assumed for the analized text in this object.}

\item{\code{desc}}{Descriptive statistics of the tagged text.}

\item{\code{TT.res}}{A data.frame with the fully tagged and transformed text (like \code{TT.res} in class \code{koRpus.tagged},
      plus
   the new columns \code{token.old} and \code{equal}).}

\item{\code{diff}}{A list with atomic vectors,
      describing the amount of diffences between both text variants (percentage):
   \describe{
     \item{\code{all.tokens}:}{Percentage of all tokens, including punctuation,
      that were altered.}
     \item{\code{words}:}{Percentage of altered words only.}
     \item{\code{all.chars}:}{Percentage of all characters, including punctuation,
      that were altered.}
     \item{\code{letters}:}{Percentage of altered letters in words only.}
   }}
}}
\keyword{classes}

