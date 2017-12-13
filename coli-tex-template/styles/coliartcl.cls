\ProvidesClass{coliartcl}[2017/12/13 v 0.1 Coli Article]
\LoadClassWithOptions{scrartcl}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now we can start to load the packages needed
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% control margin   %%%%%%%%%%
\usepackage{geometry}
\geometry{
  a4paper,		% DIN A 4 paper as base
  left=40mm,	% margin left
  right=40mm,	% margin right
  top=20mm,		% margin top
}


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
