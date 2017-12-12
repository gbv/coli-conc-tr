\ProvidesClass{colidok}[2017/10/04 v 0.1 Coli Documentation]
\LoadClassWithOptions{scrbook}


% this makes ``References'' a section instead of a chapter
% this has to be done before other packages mess around
% with the definition
\makeatletter
\renewcommand*\bib@heading{%
	\section*{\bibname}%
	\@mkboth{\bibname}{\bibname}%
}

% Change colour of superscriptes numbers from footnotes
\renewcommand\@makefnmark{\hbox{
  \@textsuperscript{\normalfont\color{coliorange}\@thefnmark}}
}

\makeatother