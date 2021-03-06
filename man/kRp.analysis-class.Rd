\docType{class}
\name{kRp.analysis,-class}
\alias{kRp.analysis,-class}
\alias{kRp.analysis-class}
\title{S4 Class kRp.analysis}
\description{
This class is used for objects that are returned by
\code{\link[koRpus:kRp.text.analysis]{kRp.text.analysis}}.
}
\section{Slots}{

\describe{
\item{\code{lang}}{A character string,
      naming the language that is assumed for the analized text in this object}

\item{\code{TT.res}}{A commented verion of the fully tagged text. Depending on input data,
      this is
   identical to the slot \code{TT.res} of function \code{treetag} or \code{freq.analysis}.}

\item{\code{desc}}{Descriptive statistics}

\item{\code{lex.div}}{Information on lexical diversity}

\item{\code{freq.analysis}}{Information on the word frequencies of the analyzed text.}
}}
\keyword{classes}

