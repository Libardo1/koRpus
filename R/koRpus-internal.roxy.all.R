# internal package description
pckg.dscrptn <- data.frame(
		Package="koRpus",
		Type="Package",
		Title="An R Package for Text Analysis",
		Author="m.eik michalke <meik.michalke@hhu.de>, with contributions from Earl Brown <eabrown@csumb.edu>,
			Alberto Mirisola, and Laura Hauser",
		AuthorsR="c(person(given=\"Meik\", family=\"Michalke\", email=\"meik.michalke@hhu.de\",
				role=c(\"aut\", \"cre\")),
			person(given=\"Earl\", family=\"Brown\", email=\"eabrown@csumb.edu\",
				role=c(\"ctb\")),
			person(given=\"Alberto\", family=\"Mirisola\",
				role=c(\"ctb\")),
			person(given=\"Laura\", family=\"Hauser\",
				role=c(\"ctb\")))",
		Maintainer="m.eik michalke <meik.michalke@hhu.de>",
		Depends="R (>= 2.10.0),methods",
		Enhances="rkward",
		Description="A set of tools to analyze texts. Includes, amongst others, functions for automatic language detection,
						hyphenation, several indices of lexical diversity (e.g., type token ratio, HD-D/vocd-D, MTLD)
						and readability (e.g., Flesch, SMOG, LIX, Dale-Chall). Basic import functions for language corpora
						are also provided, to enable frequency analyses (supports Celex and Leipzig Corpora Collection file formats).
						#'
						Note: For full functionality a local installation of TreeTagger is recommended.
						Be encouraged to send feedback to the author(s)!",
		License="GPL (>= 3)",
		Encoding="UTF-8",
		LazyLoad="yes",
		URL="http://reaktanz.de/?c=hacking&s=koRpus",
		stringsAsFactors=FALSE)