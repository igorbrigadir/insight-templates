%
% CUEDthesis v1.0
% By Harish Bhanderi <harish.bhanderi@cantab.net
% Version 1.0 released 15/07/2002
%-------------------------- identification ---------------------
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Classes/CUEDthesisPSnPDF}[2003/01/11 v1.2 CUED thesis class]
%-------------------------- initial code -----------------------

%If you want to use a Report style document then uncomment the following 3 lines and comment the below 8 book style lines:
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
%\ProcessOptions\relax
%%\LoadClass[a4paper]{report}
%\ifx\pdfoutput\undefined
%   \LoadClass[dvips, a4paper]{report}
%\else
%   \LoadClass[pdftex, a4paper]{report}
%\fi
%%Bibliography
%%uncomment next line to change bibliography name to references for Report document class
%\renewcommand{\refname}{References}

%If you want to use a Book style document then uncomment the following 3 lines and comment the above 8 report style lines:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\ifx\pdfoutput\undefined
   \LoadClass[dvips, a4paper]{book}
\else
   \LoadClass[pdftex, a4paper]{book}
\fi

\usepackage{amssymb}
\usepackage{graphics}
\usepackage{fancyhdr}
\usepackage[Bjarne]{fncychap}
\usepackage{eucal}
\usepackage[english]{babel}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
\usepackage[square, numbers, sort&compress]{natbib}
\usepackage{bibentry}
\nobibliography*
% \usepackage[round, sort, numbers, authoryear]{natbib}
\usepackage{ifthen}
\usepackage{ifpdf}


\usepackage[algochapter, algoruled, noend]{algorithm2e}
\usepackage{verbatim}
\usepackage{color}
\usepackage{lscape}
% \usepackage{nomencl}
\usepackage[normalem]{ulem}
\usepackage[printonlyused,withpage]{acronym}
\usepackage{layout}

% \usepackage{array}
\usepackage[table]{xcolor}
\usepackage{booktabs}
% \usepackage{multirow}
% \usepackage{colortbl}
% \definecolor{kugray5}{RGB}{224,224,224}
\definecolor{lightgray}{gray}{0.85}

\usepackage[titletoc]{appendix}

\usepackage[sc]{mathpazo}
\usepackage[T1]{fontenc}
\linespread{1.05}         % Palatino needs more leading (space between lines)
% \usepackage{lettrine}

\usepackage{caption}
\usepackage{subcaption}

\usepackage[strings]{underscore}

\usepackage{floatrow}
\floatsetup[table]{capposition=top}

%Bibliography
%uncomment next line to change bibliography name to references for Book document class
\renewcommand{\bibname}{References}
% note that this doesn't do much if you later define another bibliography style 


%% Nomenclature
%\usepackage{nomencl}
%%\makeglossary

%\makenomenclature

%\renewcommand{\nomname}{List of Acronyms}


\ifpdf
    \usepackage[ pdftex, plainpages = false, pdfpagelabels, 
                 pdfpagelayout = SinglePage,
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = black,
                 urlcolor  = black,
                 citecolor = black,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref} 

    \DeclareGraphicsExtensions{.png, .jpg, .pdf}
    \usepackage[pdftex]{graphicx}
    \pdfcompresslevel=9
    \graphicspath{{ThesisFigs/}{ThesisFigs/subfolder/}}
\else
    \usepackage[ dvips, 
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = black,
                 urlcolor  = black,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}

    \DeclareGraphicsExtensions{.eps, .ps}
    \usepackage{epsfig}
    \usepackage{graphicx}
    \graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}
\fi

\usepackage{tikz}
\usetikzlibrary{positioning,shadows,arrows,trees,shapes,fit}
\usepackage{tikz-qtree}
\usepackage{rotating}
\usepackage{multirow}
\usepackage[cmex10]{amsmath}
\usepackage{amssymb}
\usepackage{pbox}


%A4 settings
\ifpdf
   \pdfpageheight=297mm
   \pdfpagewidth=210mm
\else
   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.47cm}
\setlength{\voffset}{0.00cm}

\setlength{\evensidemargin}{1.96cm}
%\setlength{\oddsidemargin}{-0.54cm}
\setlength{\topmargin}{1mm}
\setlength{\headheight}{1.36cm}
\setlength{\headsep}{1.00cm}
\setlength{\textheight}{20.84cm}
\setlength{\textwidth}{13.3cm}
\setlength{\marginparsep}{5mm}
\setlength{\marginparwidth}{2cm}
\setlength{\footskip}{2.36cm}


%\ChNumVar{\fontsize{76}{80}\usefont{OT1}{pzc}{m}{n}\selectfont}
%\ChTitleVar{\raggedleft\huge\sffamily\bfseries}
%\ChTitleVar{\huge\sffamily\bfseries}

%\newcommand{\thesis@HeaderFamily}{\sffamily}

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\thechapter. #1 }}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{}
\fancyhead[RO]{\bfseries\rightmark}
%\fancyhead[LE]{\bfseries\leftmark}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\addtolength{\headheight}{0.5pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

\newcommand{\submittedtext}{{A thesis submitted for the degree of}}
%
%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your college or department(eg. Trinity, Pembroke, Maths, Physics)
\def\collegeordept#1{\gdef\@collegeordept{#1}}
% The name of your University
\def\university#1{\gdef\@university{#1}}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}

\def\supervisors#1{\gdef\@supervisors{#1}}


% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

%define title page layout
\renewcommand{\maketitle}{
  \begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
    \begin{center}
      { \huge {\bfseries {\@title}} \par}
      \vspace*{15mm}
      {\it {by} \par}
      \vspace*{15mm}
      {{\LARGE \@author} \par}
      {\large \vspace*{4ex}
      \vspace*{15mm}
      {\small \sc{\@supervisors} \par}
      \vspace*{15mm}
      {\small \sc{\submittedtext} \par}
      \vspace*{1ex}
      {\it \sc{\@degree} \par}
      \vspace*{15mm}
      {\small \bf \@degreedate}}
      \vspace*{5mm}
    \end{center}
    \begin{center}
      {\large {{\@crest} \par}}
      {\sc{\@collegeordept} \par}
      \vspace*{1ex}
      {\sc{\@university} \par}
    \end{center}
    \null\vfill
  \end{alwayssingle}
}

% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{quote} \begin{center}}
{\end{center} \end{quote} \end{alwayssingle}}

\newenvironment{declaration}
{\begin{alwayssingle}
  \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{quote} \begin{center}}
{\end{center} \end{quote} \end{alwayssingle}}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\pagestyle{empty}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% The acknowledgementslong environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgement itself 
% does not appears in a quote environment so you can get more in.

\newenvironment{acknowledgementslong}
{\pagestyle{empty}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}\begin{quote}}
{\end{quote}\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstracts} {\begin{alwayssingle} \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\Large \bfseries  Abstract}
  \end{center}
  \vspace{0.5cm}
   \begin{quote}}
{\end{quote}\end{alwayssingle}}

%The abstractlong environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself does not appears in a quote
%environment so you can get more in.

\newenvironment{abstractslong} {\begin{alwayssingle} \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  
  \begin{center}
\textbf{\large \textbf{\Large~My title}}
\par\end{center}{\large \par}

\begin{center}
\textbf{\large Me}
\par\end{center}{\large \par}

%$\vphantom{}$

\begin{center}
\textbf{\small Supervisors: x and y}
\par\end{center}{\large \par}
  \vspace*{1.5cm}

  {\Large \bfseries  Abstract}
  \end{center}
  \vspace{0.5cm} \begin{quote}}
{\end{quote}\end{alwayssingle}}

%The abstractseparate environment is for running of a page with the abstract
%on including title and author etc as required to be handed in separately

\newenvironment{abstractseparate} {\begin{alwayssingle} \pagestyle{empty}
  \vspace*{-1in}
 \begin{center}
    { \Large {\bfseries {\@title}} \par}
    {{\large \vspace*{1ex} \@author} \par}
{\large \vspace*{1ex}
    {{\@collegeordept} \par}
    {{\@university} \par}
\vspace*{1ex}
    {{\it \submittedtext} \par}
    {\it {\@degree} \par}
\vspace*{2ex}
    {\@degreedate}}
  \end{center}}
{\end{alwayssingle}}

%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

%
% fancy paragraphs, taken from RR latex macros
%
\font\bigfancy=cmbx10 scaled 3400 % magstep8
\def\fancypar#1#2{{\noindent
    \setbox0\hbox{\bigfancy #1}\setbox1\hbox{#2}\setbox2\hbox{(}%
    \count0=\ht0\advance\count0 by\dp0\count1\baselineskip
    \advance\count0 by-\ht1\advance\count0by\ht2
    \dimen1=.9ex\advance\count0by\dimen1\divide\count0 by\count1
    \advance\count0 by1\dimen0\wd0
    \advance\dimen0 by.25em\dimen1=\ht0\advance\dimen1 by-\ht1
    \global\hangindent\dimen0\global\hangafter-\count0
    \hskip-\dimen0\setbox0\hbox to\dimen0{\raise-\dimen1\box0\hss}%
    \dp0=0in\ht0=0in\box0}#2}




  \newcommand{\todo}[1]{
  % Add to todo list
  \addcontentsline{tdo}{todo}{\protect{#1}}
  %
  \begin{tikzpicture}[remember picture, baseline=-0.75ex]
      \node [coordinate] (inText) {};
  \end{tikzpicture}
  %
  % Make the margin par
  \marginpar{
      \begin{tikzpicture}[remember picture]
          \definecolor{orange}{rgb}{1,0.5,0}
   
          \draw node[draw=black, fill=orange, text width = 2cm, font=\small] (inNote)
                   {#1};
      \end{tikzpicture}
  }
  %
  \begin{tikzpicture}[remember picture, overlay]
      \draw[draw = orange, thick]
          ([yshift=-0.2cm] inText)
              -| ([xshift=-0.2cm] inNote.west)
              -| (inNote.west);
  \end{tikzpicture}
  %
  }

    \makeatletter \newcommand \listoftodos{\section*{Temporary list of todos - will be removed from final draft} \@starttoc{tdo}}
  \newcommand\l@todo[2]
    {\par\noindent \textit{#2}, \parbox{10cm}{#1}\par} \makeatother

\usepackage{listings}
\usepackage{courier}
 

\lstset{language=C++,
                basicstyle=\footnotesize\ttfamily,
                keywordstyle=\color{blue}\footnotesize\ttfamily,
                stringstyle=\color{red}\footnotesize\ttfamily,
                commentstyle=\color{brown}\footnotesize\ttfamily,
                morecomment=[l][\color{magenta}]{\#}
                showspaces=false,           % Leerzeichen anzeigen ?
                showtabs=false,             % Tabs anzeigen ?
                tabsize=2,
                breaklines=true,            % Zeilen werden Umgebrochen
                xleftmargin=17pt,
                framexleftmargin=17pt,
                framexrightmargin=5pt,
                framexbottommargin=4pt,
                backgroundcolor=\color{lightgray!10},
                showstringspaces=false      % Leerzeichen in Strings anzeigen ? 
}

\DeclareCaptionFont{white}{\color{white}}
\DeclareCaptionFormat{listing}{\colorbox[cmyk]{0.43, 0.35, 0.35,0.01}{\parbox{\textwidth}{\hspace{15pt}#1#2#3}}}
\captionsetup[lstlisting]{format=listing,labelfont=white,textfont=white, singlelinecheck=false, margin=0pt, font={bf,footnotesize}}
