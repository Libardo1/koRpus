\docType{class}
\name{kRp.lang,-class}
\alias{kRp.lang,-class}
\alias{kRp.lang-class}
\title{S4 Class kRp.lang}
\description{
This class is used for objects that are returned by
\code{\link[koRpus:guess.lang]{guess.lang}}.
}
\section{Slots}{

\describe{
\item{\code{lang}}{A character string,
      naming the language (by a short identifier) that was estimated for the analized text in this object.}

\item{\code{lang.name}}{A character string, full name of the estimated language.}

\item{\code{txt}}{A character string containing the analized part of the text.}

\item{\code{txt.full}}{A character string containing the full text.}

\item{\code{udhr}}{A data.frame with full analysis results for each language tried.}
}}
\keyword{classes}

