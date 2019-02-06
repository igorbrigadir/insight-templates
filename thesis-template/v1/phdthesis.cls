%% RCS ID: $Header: /home/cvsmanager/Thesis/texinputs/phdthesis.cls,v 1.22 2004/06/03 17:05:46 colmconn Exp $
%
% phdthesis.cls for UCD Thesis
% heavily based on manual.cls for the Python manual documentation
 
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{phdthesis}
             [2004/01/26 Document class (Ph. D. Thesis)]
% pass on all options to the report class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} 
\ProcessOptions\relax
\LoadClass{report}
\RequirePackage{palatino}
\RequirePackage{avant}
%\RequirePackage{count1to}

%\def\dollar#1{\counter=0 \countdigits #1.\relax \typeout{\counter}}
%\def\countdigits #1{\ifx .#1\def\next##1\relax{}%
%  \else \advance \counter by 1 \let\next\countdigits
%  \fi  \next}

% Optional packages:
%
% If processing of these documents fails at your TeX installation,
% these may be commented out (independently) to make things work.
% These are both supplied with the current version of the teTeX
% distribution.
%
% The "fancyhdr" package makes nicer page footers reasonable to
% implement, and is used to put the chapter and section information in 
% the footers.
%
\RequirePackage{fancyhdr}


% Required packages:
%
% The "fncychap" package is used to get the nice chapter headers.  The
% .sty file is distributed with Python, so you should not need to disable
% it.  You'd also end up with a mixed page style; uglier than stock LaTeX!
%
\RequirePackage[Bjarne]{fncychap}
% Do horizontal rules it this way to match:
\newcommand{\thesis@doHorizontalRule}{\mghrulefill{\RW}}

% Uncomment these two lines to ignore the paper size and make the page 
% size more like a typical published manual.
%\renewcommand{\paperheight}{9in}
%\renewcommand{\paperwidth}{8.5in}   % typical squarish manual
%\renewcommand{\paperwidth}{7in}     % O'Reilly ``Programmming Python''

% These packages can be used to add marginal annotations which indicate
% index entries and labels; useful for reviewing this messy documentation!
%
%\RequirePackage{showkeys}
%\RequirePackage{showidx}
\RequirePackage{vmargin}
\setpapersize{A4}

% for PDF output, use maximal compression & a lot of other stuff
% (test for PDF recommended by Tanmoy Bhattacharya <tanmoy@qcd.lanl.gov>)
%
\newif\ifthesis@doing@page@targets
\thesis@doing@page@targetsfalse

%\ifx\pdfoutput\undefined\else\ifcase\pdfoutput
%\else
%  \input{pdfcolor}
%  \let\thesis@LinkColor=\NavyBlue
%  \let\thesis@NormalColor=\Black
%  \pdfcompresslevel=9
%  \pdfpagewidth=\paperwidth    % page width of PDF output
%  \pdfpageheight=\paperheight  % page height of PDF output
%  %
%  % Pad the number with '0' to 3 digits wide so no page name is a prefix
%  % of any other.
%  %
%  \newcommand{\thesis@targetno}[1]{\ifnum#1<100 0\fi\ifnum#1<10 0\fi#1}
%  \newcommand{\thesis@pageno}{\thesis@targetno\thepage}
%  %
%  % This definition allows the entries in the page-view of the ToC to be
%  % active links.  Some work, some don't.
%  %
%  \let\thesis@OldContentsline=\contentsline
%  %
%  % Macro that takes two args: the name to link to and the content of
%  % the link.  This takes care of the PDF magic, getting the colors
%  % the same for each link, and avoids having lots of garbage all over 
%  % this style file.
%  \newcommand{\thesis@linkToName}[2]{%
%%    \pdfannotlink attr{/Border [0 0 0]} goto name{#1}%
%    \pdfstartlink attr{/Border [0 0 0]} goto name{#1}%
%      \thesis@LinkColor#2\thesis@NormalColor%
%    \pdfendlink%
%  }    
%  % Compute the padded page number separately since we end up with a pair of
%  % \relax tokens; this gets the right string computed and works.
%  \renewcommand{\contentsline}[3]{%
%    \def\my@pageno{\thesis@targetno{#3}}%
%    \thesis@OldContentsline{#1}{\thesis@linkToName{page\my@pageno}{#2}}{#3}%
%  }
%  \AtEndDocument{
%    \InputIfFileExists{\jobname.bkm}{\pdfcatalog{/PageMode /UseOutlines}}{}
%  }
%  \newcommand{\thesis@target}[1]{%
%    \ifthesis@doing@page@targets%
%      {\pdfdest name{#1} xyz}%
%    \fi%
%  }
%  \let\thesis@OldLabel=\label
%  \renewcommand{\label}[1]{%
%    \thesis@OldLabel{#1}%
%    \thesis@target{label-#1}%
%  }
%  % This stuff adds a page# destination to every PDF page, where # is three
%  % digits wide, padded with leading zeros.  This doesn't really help with
%  % the frontmatter, but does fine with the body.
%  %
%  % This is *heavily* based on the hyperref package.
%  %
%  \def\@begindvi{%
%    \unvbox \@begindvibox
%    \@hyperfixhead
%  }
%  \def\@hyperfixhead{%
%  \let\H@old@thehead\@thehead
%       \global\def\@foo{\thesis@target{page\thesis@pageno}}%
%     \expandafter\ifx\expandafter\@empty\H@old@thehead
%       \def\H@old@thehead{\hfil}\fi
%    \def\@thehead{\@foo\relax\H@old@thehead}%
%  }
%\fi\fi

% left top right bottom            headheight hedsep footheight footskip
%%%%%%% original before changed by Matt Stabeler %%%%%%
%\setmarginsrb{4cm}{35pt}{2.54cm}{2.0cm} {14pt} {25pt} {0pt} {30pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setmarginsrb{3.0cm}{35pt}{2.0cm}{2.0cm} {14pt} {25pt} {0pt} {30pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% BEGIN ORIGINAL VERSION %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Increase printable page size (copied from fullpage.sty)
%\addtolength{\headheight}{2.5pt}
%\topmargin 0pt
%\advance \topmargin by -\headheight
%\advance \topmargin by -\headsep

%% attempt to work a little better for A4 users
%\textheight \paperheight
%%\advance\textheight by -2in
%\advance\textheight by -5.08cm

%\oddsidemargin 0pt
%%\oddsidemargin 1.46cm
%\evensidemargin 0pt
%%\evensidemargin -.25in  % for ``manual size'' documents
%\marginparwidth 0.5in

%\textwidth \paperwidth
%\advance\textwidth by -5.08cm


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% END ORIGINAL VERSION %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% BEGIN PYTHON VERSION %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Increase printable page size (copied from fullpage.sty)
%\topmargin 0pt
%\advance \topmargin by -\headheight
%\advance \topmargin by -\headsep

%% attempt to work a little better for A4 users
%\textheight \paperheight
%\advance\textheight by -2in

%\oddsidemargin 0pt
%\evensidemargin 0pt
%%\evensidemargin -.25in  % for ``manual size'' documents
%\marginparwidth 0.5in

%\textwidth \paperwidth
%\advance\textwidth by -2in

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% END PYTHON VERSION %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Increase printable page size (copied from fullpage.sty)
%\topmargin 0pt
%\advance \topmargin by -\headheight
%\advance \topmargin by -\headsep

%% attempt to work a little better for A4 users
%\textheight \paperheight
%\advance\textheight by -2in

%\oddsidemargin 0pt
%\evensidemargin 0pt
%%\evensidemargin -.25in  % for ``manual size'' documents
%\marginparwidth 0.5in

%\textwidth \paperwidth
%\advance\textwidth by -2in

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Style parameters and macros used by most documents here
\raggedbottom
\sloppy
\parindent = 0mm
\parskip = 2mm
\hbadness = 5000                % don't print trivial gripes
\vbadness = 5000

\pagestyle{empty}               % start this way; change for
\pagenumbering{roman}           % ToC & chapters

% Use this to set the font family for headers and other decor:
\newcommand{\thesis@HeaderFamily}{\sffamily}

% Redefine the 'normal' header/footer style when using "fancyhdr" package:
\@ifundefined{fancyhf}{}{

  \fancypagestyle{normal}{%
    \fancyhf{}
    \fancyfoot[C]{{\thesis@HeaderFamily\thepage}}
%    \fancyfoot[RL]{{\thesis@HeaderFamily Draft}}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0.4pt}
    }

  \fancypagestyle{plain}{%
    \fancyhf{}
    \fancyfoot[C]{{\thesis@HeaderFamily\thepage}}
%    \fancyfoot[RL]{{\thesis@HeaderFamily Draft}}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0.4pt}
    }
}

%\fancypagestyle{fancy}{%
%  \fancyhf{}
%  \fancyfoot[C]{{\thesis@HeaderFamily\thepage}}
%  \renewcommand{\headrulewidth}{0pt}
%  \renewcommand{\footrulewidth}{0.4pt}
%}

%%%%%%%
%%%%%%% this is the original 
%%%%%%%
%\@ifundefined{fancyhf}{}{
%  % Use \pagestyle{normal} as the primary pagestyle for text.
%  \fancypagestyle{normal}{
%    \fancyhf{}
%    \fancyfoot[LE,RO]{{\thesis@HeaderFamily\thepage}}
%    \fancyfoot[LO]{{\thesis@HeaderFamily\nouppercase{\rightmark}}}
%    \fancyfoot[RE]{{\thesis@HeaderFamily\nouppercase{\leftmark}}}
%    \renewcommand{\headrulewidth}{0pt}
%    \renewcommand{\footrulewidth}{0.4pt}
%  }


%  % Update the plain style so we get the page number & footer line,
%  % but not a chapter or section title.  This is to keep the first
%  % page of a chapter and the blank page between chapters `clean.'
%  \fancypagestyle{plain}{
%    \fancyhf{}
%    \fancyfoot[LE,RO]{{\thesis@HeaderFamily\thepage}}
%    \renewcommand{\headrulewidth}{0pt}
%    \renewcommand{\footrulewidth}{0.4pt}
%  }
%  % Redefine \cleardoublepage so that the blank page between chapters
%  % gets the plain style and not the fancy style.  This is described
%  % in the documentation for the fancyhdr package by Piet von Oostrum.
%  \@ifundefined{chapter}{}{
%    \renewcommand{\cleardoublepage}{
%      \clearpage\if@openright \ifodd\c@page\else
%      \hbox{}
%      \thispagestyle{plain}
%      \newpage
%      \if@twocolumn\hbox{}\newpage\fi\fi\fi
%    }
%  }
%}

% This sets up the {verbatim} environment to be indented and a minipage,
% and to have all the other mostly nice properties that we want for
% code samples.

\let\thesis@OldVerbatim=\verbatim
\let\thesis@OldEndVerbatim=\endverbatim
\RequirePackage{verbatim}

% Variable used by begin code command
%\newlength{\thesis@codewidth}

%\renewcommand{\verbatim}{%
%  \setlength{\parindent}{1cm}%
%  % Calculate the text width for the minipage:
%  \setlength{\thesis@codewidth}{\linewidth}%
%  \addtolength{\thesis@codewidth}{-\parindent}%
%  %
%  \par\indent%
%  \begin{minipage}[t]{\thesis@codewidth}%
%    \small%
%    \thesis@OldVerbatim%
%}
%\renewcommand{\endverbatim}{%
%    \thesis@OldEndVerbatim%
%  \end{minipage}%
%}


% Augment the sectioning commands used to get our own font family in place,
% and reset some internal data items:
\renewcommand{\section}{%
                        \@startsection{section}{1}{\z@}%
                                    {-3.5ex \@plus -1ex \@minus -.2ex}%
                                    {2.3ex \@plus.2ex}%
                                    {\reset@font\Large\thesis@HeaderFamily\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                    {-3.25ex\@plus -1ex \@minus -.2ex}%
                                    {1.5ex \@plus .2ex}%
                                    {\reset@font\large\thesis@HeaderFamily\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                    {-3.25ex\@plus -1ex \@minus -.2ex}%
                                    {1.5ex \@plus .2ex}%
                                    {\reset@font\normalsize\thesis@HeaderFamily\bfseries}}
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize\thesis@HeaderFamily}}
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
                                    {3.25ex \@plus1ex \@minus .2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize\thesis@HeaderFamily}}

%                                    {\reset@font\normalsize}}
%\@startsection#1#2#3#4#5#6*[#7]#8
%  typeset section heading.
%  #1<-section type ("section","subsection",...,"subparagraph")
%  #2<-section level (1=>section, 2=>subsection, ..., 5=>subparagraph)
%  #3<-indent of whole heading from left margin
%  #4<-"beforeskip": absolute value is skip above heading; if value is
%      negative, the paragraph indentation of text following heading is
%      suppressed
%  #5<-"afterskip"; if positive, then skip to leave below heading; if
%      negative, absolute value is skip after title of run-in heading
%  #6<-style for typesetting heading
%  #7<-title for use in running heads, table of contents (default value
%      is as #8)
%  #8<-title of section

%  notes:
%  1. for #4 and #5, negation applies to all components of a skip --
%     the negative of
%      10pt plus 5pt minus 2.5pt
%     is (slightly surprisingly)
%      -10pt plus -5pt minus -2.5pt
%  2. #6 may be modal ("\sffamily\bfseries") or may take an argument
%     ("\textbf"), or may be a combination ("\sffamily\textbf")
%  3. in ordinary use, a heading is specified as invocation of
%     \@startsection, followed by the 6 arguments specifying details;
%     the user's arguments to the command appear as the * and #7 and #8
%  4. the "*" is optional, ordinarily supplied by user; it separates
%     the unnumbered \section* (and its parallels) from \section
% See 
%http://groups.google.ie/groups?q=group:comp.text.tex+arguments+to+%40startsection&hl=en&lr=lang_en&ie=UTF-8&safe=off&selm=b45gg2%246oi%242%40pegasus.csx.cam.ac.uk&rnum=9
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\emph}[1]{{\em #1}}
\newcommand{\dfn}[1]{\emph{#1}}
\newcommand{\strong}[1]{{\bf #1}}
% let's experiment with a new font:
\newcommand{\file}[1]{`{\small\textsf{#1}}'}
\newcommand{\filenq}[1]{{\small\textsf{#1}}}

% Use this def/redef approach for \url{} since hyperref defined this already,
% but only if we actually used hyperref:
%\@ifundefined{pdfstartlink}{
%\newcommand{\thesis@url}[1]{\mbox{\small\textsf{#1}}}
%}{
%  \newcommand{\thesis@url}[1]{{%
%      \pdfstartlink attr{/Border [0 0 0]} user{/S /URI /URI (#1)}%
%      \thesis@LinkColor%                              color of the link text
%      \mbox{\small\textsf{#1}}%
%      \thesis@NormalColor%                    Turn it back off; these are declarative
%      \pdfendlink}%                       and don't appear bound to the current
%  }%                                     formatting "box".
%}
%\let\url=\thesis@url

\newcommand{\email}[1]{{\small\textsf{#1}}}
\newcommand{\newsgroup}[1]{{\small\textsf{#1}}}

\newcommand{\thesis@varvars}[1]{{\def\,{\/{\char`\,}}\var{#1}}}
% let's see if this breaks anything now; we may be able to simplify...
\renewcommand{\thesis@varvars}[1]{\var{#1}}

% I'd really like to get rid of this!
\newif\iftexi\texifalse

% This is used to get l2h to put the copyright and abstract on
% a separate HTML page.
\newif\ifhtml\htmlfalse


% Allow specification of the author's address separately from the
% author's name.  This can be used to format them differently, which
% is a good thing.
%
\newcommand{\thesis@authoraddress}{}
\newcommand{\authoraddress}[1]{\renewcommand{\thesis@authoraddress}{#1}}
\let\developersaddress=\authoraddress
\let\developer=\author
\let\developers=\author


% allow specification of the blurb about submission of the thesis
\newcommand{\submission}[1]{\newcommand{\@submissionb}{#1}}
\newcommand{\supervision}[1]{\newcommand{\@supervision}{#1}}
\newcommand{\secondsupervisor}[1]{\newcommand{\@secondsupervisor}{#1}}
\newcommand{\doctoralpanel}[1]{\newcommand{\@doctoralpanel}{#1}}
\newcommand{\hod}[1]{\newcommand{\@hod}{#1}}
\newcommand{\department}[1]{\newcommand{\@department}{#1}}
\newcommand{\@by}{by}
\newcommand{\by}{\@by}
\newcommand{\@titlein}{in}  % add the word IN - matt
\newcommand{\titlein}{\@titlein} % add the word IN - matt
\newcommand{\@supervisedBy}{Principal Supervisor: }
\newcommand{\supervisedBy}{\@supervisedBy}
\newcommand{\@secondsupervisedBy}{Secondary Supervision: }
\newcommand{\secondsupervisedBy}{\@secondsupervisedBy}
\newcommand{\headOfDepartmentName}{Head of School: }
\newcommand{\@panelmembers}{Doctoral Studies Panel Membership: }
\newcommand{\submissionmonth}[1]{\newcommand{\@submissionmonthb}{#1}}
\newcommand{\submissionyear}[1]{\newcommand{\@submissionyearb}{#1}}

% This sets up the fancy chapter headings that make the documents look
% at least a little better than the usual LaTeX output.
%
\@ifundefined{ChTitleVar}{}{
  \ChNameVar{\raggedleft\normalsize\thesis@HeaderFamily}
  \ChNumVar{\raggedleft \bfseries\Large\thesis@HeaderFamily}
  \ChTitleVar{\raggedleft \rm\Huge\thesis@HeaderFamily}
  % This creates chapter heads without the leading \vspace*{}:
  \def\@makechapterhead#1{%
    {\parindent \z@ \raggedright \normalfont
      \ifnum \c@secnumdepth >\m@ne
        \DOCH
      \fi
      \interlinepenalty\@M
      \DOTI{#1}
    }
  }
}

% support for module synopsis sections:
%\newcommand{\thesis@ModSynopsisFilename}{\jobname\thechapter.syn}
%\let\thesis@OldChapter=\chapter
%\renewcommand{\chapter}{
%  \thesis@ProcessModSynopsis
%  \thesis@closeModSynopsisFile
%  \thesis@OldChapter
%}


% Change the title page to look a bit better, and fit in with the
% fncychap ``Bjarne'' style a bit better.
%


\renewcommand{\maketitle}{%
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \thesis@doHorizontalRule%
%    \@ifundefined{pdfinfo}{}{{
%      % This \def is required to deal with multi-line authors; it
%      % changes \\ to ', ' (comma-space), making it pass muster for
%      % generating document info in the PDF file.
%        \def\\{, }
%        \pdfinfo{
%          /Author (\@author)
%          /Title (\@title)
%        }
%      }
%    }
    \begin{center}%


      { 
	\begin{figure}
	  \centering
		\includegraphics[height=3cm]{graphics/logos/ucd_brandmark_colour.jpg}	 \hspace{0.5cm}
	\end{figure}


\rm\Huge\thesis@HeaderFamily \@title \par}%
      \vfill
      {\large \by \par}
      \vfill
      {\LARGE\thesis@HeaderFamily \@author \par}%
      \vfill
      {\large \@submissionb \par}%
      \vfill 
      {\large \titlein \par}
      \vfill
      {\large 
        \@department \par
        \headOfDepartmentName~\@hod \par
        \vfill
        \@supervisedBy \@supervision \par
		% If @secondsupervisor is not defined don't print, else print names - MATT
		\ifx\@secondsupervisor\undefined
		\else
		       \@secondsupervisedBy \@secondsupervisor \par
		\fi
        \vfill
		% If @secondsupervisor is not defined don't print, else print names - MATT
		\ifx\@doctoralpanel\undefined
		\else
		        \@panelmembers \par
		        \@doctoralpanel

		\fi

        \vfill
        \@submissionmonthb\ \@submissionyearb \par

      }%
      %{\large \thesis@HeaderFamily \@supervision \par}%
      \vfill
    \end{center}%\par
    \@thanks%
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \let\thanks\relax\let\maketitle\relax%
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}%
}
\renewcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\thesis@HeaderFamily \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \thesis@HeaderFamily #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \thesis@HeaderFamily #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}


%% This creates an abstract environment just like abstract 

\renewenvironment{abstract}{%
  \pagebreak%
  \pagestyle{plain}%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\abstractname
    \@mkboth{%
      \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
  \if@restonecol\twocolumn\fi
}

% Catch the end of the {abstract} environment, but here make sure the
% abstract is followed by a blank page if the 'openright' option is used.
%
\let\thesis@OldEndAbstract=\endabstract
\renewcommand{\endabstract}{
  \addcontentsline{toc}{chapter}{\abstractname}
  \vfil\pagebreak
  \thesis@OldEndAbstract
}


%% This creates an acknowledgements environment just like abstract 

\newcommand{\acknowledgementsname}{Acknowledgements}
\newenvironment{acknowledgements}{%
  \pagebreak%
  \pagestyle{plain}%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\acknowledgementsname
    \@mkboth{%
      \MakeUppercase\acknowledgementsname}{\MakeUppercase\acknowledgementsname}}%
  \if@restonecol\twocolumn\fi
}

\let\thesis@OldEndAcknowledgements=\endacknowledgements
\renewcommand{\endacknowledgements}{
  \addcontentsline{toc}{chapter}{\acknowledgementsname}
  \vfil\pagebreak
  \thesis@OldEndAcknowledgements
}

\newcommand{\listofpublicationsname}{List of Publications}
\newenvironment{listofpublications}{%
  \pagebreak%
  \pagestyle{plain}%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\listofpublicationsname
    \@mkboth{%
      \MakeUppercase\listofpublicationsname}{\MakeUppercase\listofpublicationsname}}%
  \if@restonecol\twocolumn\fi
}

% Catch the end of the {listofpublications} environment
%
\let\thesis@OldEndListofpublications=\endlistofpublications
\renewcommand{\endlistofpublications}{
  \addcontentsline{toc}{chapter}{\listofpublicationsname}
  \vfil\pagebreak 
  \thesis@OldEndListofpublications
  \pagenumbering{arabic}%
}

%% This creates an dedication environment just like abstract 

\newcommand{\dedicationsname}{Dedication}
\newenvironment{dedication}{%
  \pagebreak%
  \pagestyle{empty}%
  {%
    \null\vfil
    \parskip = 0mm%
    \parindent = 0mm%
  }%
}

\let\thesis@OldDedication=\enddedication
\renewcommand{\enddedication}{
  \vfil\pagebreak
  \thesis@OldDedication
}

%\renewenvironment{quotation}
%{\list{}{\singlespacing\listparindent 1.5em%
%    \itemindent    \listparindent
%    \rightmargin   \leftmargin
%    \parsep        \z@ \@plus\p@}%
%\item\relax}
%{\endlist\onehalfspacing}

% This wraps the \tableofcontents macro with all the magic to get the
% spacing right and have the right number of pages if the 'openright'
% option has been used.  This eliminates a fair amount of crud in the
% individual document files.
%

\setcounter{tocdepth}{2}

%% this sets the amount of numbering allowable in a section number
\setcounter{secnumdepth}{3}

\let\thesis@OldTableofcontents=\tableofcontents
\renewcommand{\tableofcontents}{%
%  \setcounter{page}{1}%
  \pagebreak%
  \pagestyle{plain}%
  {%
    \parskip = 0mm%
    \thesis@OldTableofcontents%
    \if@openright%
      \ifodd\value{page}%
        \typeout{Adding blank page after the table of contents.}%
        \pagebreak\hspace{0pt}%
      \fi%
    \fi%
    \cleardoublepage%
  }%
%  \pagenumbering{arabic}%
%  \pagestyle{normal}%
%  \thesis@doing@page@targetstrue%
}

\let\thesis@OldListOfTables=\listoftables
\renewcommand{\listoftables}{%
  \pagebreak%
  \pagestyle{plain}%
  {%
%    \addcontentsline{toc}{chapter}{\listtablename}
    \parskip = 0mm%
    \thesis@OldListOfTables
    \if@openright%
      \ifodd\value{page}%
        \typeout{Adding blank page after the list of figures.}%
        \pagebreak\hspace{0pt}%
      \fi%
    \fi%
    \cleardoublepage%
  }%

%  \pagenumbering{arabic}%
%  \pagestyle{normal}%
%  \thesis@doing@page@targetstrue%
}


\let\thesis@OldListOfFigures=\listoffigures
\renewcommand{\listoffigures}{%
  \pagebreak%
  \pagestyle{plain}%
  {%
%    \addcontentsline{toc}{chapter}{\listfigurename}
    \parskip = 0mm%
    \thesis@OldListOfFigures
    \if@openright%
      \ifodd\value{page}%
        \typeout{Adding blank page after the list of figures.}%
        \pagebreak\hspace{0pt}%
      \fi%
    \fi%
    \cleardoublepage%
  }%
%  \pagenumbering{arabic}%
%  \pagestyle{normal}%
%  \thesis@doing@page@targetstrue%
}

%\renewcommand{\@dotsep}{10000}
% This is needed to get the width of the section # area wide enough in the
% library reference.  Doing it here keeps it the same for all the manuals.
%
\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{2.6em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{4.1em}{3.5em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{3.5em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{3.5em}}
%\setcounter{tocdepth}{3}


% Fix the theindex environment to add an entry to the Table of
% Contents; this is much nicer than just having to jump to the end of
% the book and flip around, especially with multiple indexes.
%
%\let\thesis@OldTheindex=\theindex
%\renewcommand{\theindex}{
%  \cleardoublepage
%  \thesis@OldTheindex
%  \addcontentsline{toc}{chapter}{\indexname}
%}

\renewenvironment{theindex}
{%
  \cleardoublepage
  \if@twocolumn
  \@restonecolfalse
  \else
  \@restonecoltrue
  \fi
  \columnseprule \z@
  \columnsep 35\p@
  
  \twocolumn[\@makeschapterhead{\indexname}% 
  \vspace{-1cm}Numbers in \textbf{bold} typeface refer to entries in the
  bibliography.\vspace{.5cm}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \thispagestyle{plain}\parindent\z@
  \parskip\z@ \@plus .3\p@\relax
  \let\item\@idxitem
  \addcontentsline{toc}{chapter}{\indexname}%
}
{\if@restonecol\onecolumn\else\clearpage\fi}

% Long variable names, 

\DeclareRobustCommand\varname[1]{%
\ifmmode
  \begingroup % local, but not braces or \bgroup!
  % Select math italic without braces:  (Is there a nicer way??)
  \let\math@bgroup\@empty \let\math@egroup\@empty \mathit\@empty
  #1\endgroup
\else
  \emph{#1}%  In text, just use \emph
\fi}

%\makeatletter

%\newcommand{\labelcol}[1]{%
%   \label{#1}%
%   \@ifundefined{r@#1}{%
%      \typeout{No such reference #1}%
%   }{%
%     \typeout{***LABELCOL*** reference #1  page \the\count1 \thepage}%
%     \immediate\write\colfig{\the\count1}}}

%\newcounter{colfigref}
%\newcommand{\labelcol}[1]{%
%   \label{#1}%
%   \@ifundefined{r@#1}{%
%      \typeout{pas de reference #1}%
%   }{%

%\setcounter{colfigref}{\expandafter\expandafter\expandafter\@secondoftwo
%        \csname r@#1\endcsname}%
%     \typeout{***LABELCOL*** reference #1  page \thecolfigref}%
%     \immediate\write\colfig{\thecolfigref}}}
%\makeatother

%\AtBeginDocument{%
%\newwrite\colfig
%\immediate\openout\colfig=\jobname.lop}

%\AtEndDocument{\closeout\colfig}

%%% Local Variables: 
%%% mode: latex
%%% x-symbol-coding: iso-8859-1
%%% x-symbol-8bits: t
%%% x-symbol-subscripts: nil
%%% x-symbol-image: nil
%%% TeX-master: nil
%%% End:
