\docType{class}
\name{kRp.hyph.pat,-class}
\alias{kRp.hyph.pat,-class}
\alias{kRp.hyph.pat-class}
\title{S4 Class kRp.hyph.pat}
\description{
This class is used for objects that are returned by
\code{\link[koRpus:read.hyph.pat]{read.hyph.pat}}.
}
\section{Slots}{

\describe{
\item{\code{lang}}{A character string,
      naming the language that is assumed for the patterns in this object}

\item{\code{pattern}}{A matrix with three colums:
   \describe{
     \item{\code{orig}:}{The unchanged patgen patterns.}
     \item{\code{char}:}{Only the characters used for matching.}
     \item{\code{nums}:}{The hyphenation number code for the pattern.}
   }}
}}
\keyword{classes}

