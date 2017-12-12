\ProvidesClass{coliartcl}[2017/09/28 v 0.1 Coli Article]
\LoadClassWithOptions{scrartcl}

%\documentclass[12pt,        % standard font size
%  english,ngerman,          % english primary, german secondary
%  paper=a4,                 % standard paper size
%  captions=tablesignature,  % captions below tables
%  listof=numbered,          % including lists of... in the ToC
%  bibliography=totoc,       % references in ToC
%  headings=small,           % size of headings
%  headinclude=false,        % don't include page head in page layout
%  footinclude=false,        % don't include page foot in page layout
%  parskip=half-,            % space between paragraphs, no indentation
%  oneside,                  % one-sided print
%  DIV=12                    %
%]{scrartcl}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now we can start to load the packages needed
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% control margin   %%%%%%%%%%
\usepackage{geometry}
\geometry{
  a4paper,
  left=30mm,
  right=30mm,
  top=20mm,
}


%The next command sets up an environment for the abstract to your paper.
%\newenvironment{coliabstract}{%
%	\begin{quote} \bf}
%	{\end{quote}
%}


% If your reference list includes text notes as well as references,
% include the following line; otherwise, comment it out.
\renewcommand\refname{References and Notes}


% The following lines set up an environment for the last note in the
% reference list, which commonly includes acknowledgments of funding,
% help, etc.  It's intended for users of BibTeX or the {thebibliography}
% environment.  Users who are hand-coding their references at the end
% using a list environment such as {enumerate} can simply add another
% item at the end, and it will be numbered automatically.
\newcounter{lastnote}
\newenvironment{colilastnote}{%
\setcounter{lastnote}{\value{enumiv}}%
\addtocounter{lastnote}{+1}%
\begin{list}%
	{\arabic{lastnote}.}
	{\setlength{\leftmargin}{.22in}}
	{\setlength{\labelsep}{.5em}}}
{\end{list}}


% Include your paper's title here
\title{
	\colititle
}


% Include the date command, but leave its argument blank.
\date{
	\colidate
}
%%%%%%%%%%%%%%%%% END OF PREAMBLE %%%%%%%%%%%%%%%%