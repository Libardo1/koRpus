\docType{class}
\name{kRp.hyphen,-class}
\alias{kRp.hyphen,-class}
\alias{kRp.hyphen-class}
\title{S4 Class kRp.hyphen}
\description{
This class is used for objects that are returned by
\code{\link[koRpus:hyphen]{hyphen}}.
}
\section{Slots}{

\describe{
\item{\code{lang}}{A character string,
      naming the language that is assumed for the analized text in this object}

\item{\code{desc}}{Descriptive statistics of the analyzed text.}

\item{\code{hyphen}}{A data.frame with two columns:
\describe{
  \item{\code{syll}:}{Number of recognized syllables}
  \item{\code{word}:}{The hyphenated word}
}}
}}
\keyword{classes}

