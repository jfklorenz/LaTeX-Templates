\ProvidesClass{Therapie}
\LoadClass{article}
%-------------------------------------------------------------
%	Packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{keyval}
\RequirePackage[yyyymmdd]{datetime}
\RequirePackage[pdftex,
            pdfauthor={Julian Lorenz},
            pdftitle={Therapeutische Sitzung},
            pdfsubject={Therapie},
            pdfkeywords={Therapie, Session},
            pdfproducer={Latex with hyperref, or other system},
            pdfcreator={pdflatex, or other tool}]{hyperref}
\hypersetup{
    colorlinks,
    linkcolor={blue!60!black},
    citecolor={blue!50!black},
    urlcolor={blue!60!black}}
\RequirePackage{tabularx}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage[a4paper]{geometry}
\RequirePackage{amsmath, amssymb}
\RequirePackage{booktabs}
\RequirePackage{pifont}
\RequirePackage[scale=2]{ccicons}
\RequirePackage{xspace}
\RequirePackage{colortbl}
\RequirePackage{marvosym}
\RequirePackage{chngcntr}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{pdflscape}
\RequirePackage{arydshln}
\RequirePackage{booktabs}
\RequirePackage{thmbox}
\RequirePackage{multicol}
%\usepackage{ wasysym }
%\usepackage[ngerman]{babel}
\RequirePackage{smartdiagram}
\RequirePackage{array}
\RequirePackage{thmtools}
\PassOptionsToPackage{demo}{graphicx}
\RequirePackage{tikz}
\usetikzlibrary{calc, positioning, shapes, through, intersections, arrows.meta, shadows}
\RequirePackage{xparse}

\def\autor{Autor}%
\def\datum{\today}%
\def\thema{Thema}
\def\nummerr{0}

\define@key{therapie.cls}{autor}[Autor]{%
  \def\autor{#1}}
\define@key{therapie.cls}{datum}[\today]{%
  \def\datum{#1}}
\define@key{therapie.cls}{thema}[Thema]{%
  \def\thema{#1}}
\define@key{therapie.cls}{nummer}[0]{%
  \def\nummer{#1}}

\ExecuteOptionsX{autor, datum, thema, nummer}
\ProcessOptionsX% 




\renewcommand{\arraystretch}{1.2}
\newenvironment{mythm}[2][M]{%
  \thmbox[#1]{\textbf{#2}}%
  \hspace*{-1.5em}\slshape\ignorespaces%
  }
  {%
  \endthmbox\vspace*{.75ex}%
  }

\definecolor{gray2}{RGB}{190, 220, 230}
\definecolor{gray3}{RGB}{230, 230, 230}


\definecolor{greentitle}{RGB}{61,170,61}
\definecolor{greentitleback}{RGB}{216,233,213}

\newcounter{mdexample}
\counterwithin{mdexample}{section}

\newcommand{\ueberschrift}[1]{\noindent\begin{large}\textbf{#1}\end{large}\\}
\newcommand{\linie}{\noindent\myRule[gray]{\textwidth}{1pt}\\}

\newenvironment{abschnitt}[4]
  {\stepcounter{mdexample}\begin{mdframed}[
    frametitle=Sitzung: #2 $\qquad$\text{ }$\qquad$ Zustand: #3 $\qquad$\text{ }$\qquad$ Zeit: #4,
    frametitlefont=\scshape,
    topline=false,
    bottomline=false,
    rightline=false,
    linecolor=gray,
    linewidth=1pt,
    singleextra={
      \node[
        overlay,
        outer sep=0pt,
        anchor=north east,
        text width=1cm,
        minimum height=4ex,
        fill=gray,
        font=\color{white}\sffamily\bfseries
      ] at (O|-P) {t+#1};
      },
    firstextra={
      \node[
        overlay,
        outer sep=0pt,
        anchor=north east,
        text width=1cm,
        minimum height=4ex,
        fill=gray,
        font=\color{white}\sffamily\bfseries
      ] at (O|-P) {t+#1};
      }
    ]
  }
  {\end{mdframed}}
 
\pgfdeclarelayer{background}
\pgfdeclarelayer{foreground}
\pgfsetlayers{background,main,foreground}

\newcommand*\up{\textcolor{green}{%
  \ensuremath{\blacktriangle}}}
\newcommand*\down{\textcolor{red}{%
  \ensuremath{\blacktriangledown}}}
\newcommand*\const{\textcolor{darkgray}%
  {\textbf{--}}}



%-------------------------------------------------------------
%	Input

\setlength{\topskip}{\ht\strutbox} 					% behebt Warnung von geometry 
\setlength{\headheight}{1.1\baselineskip}   		% Headheight hochsetzten 
\geometry{paper=a4paper,
left=30mm,											% Seitenabstand Links
right=30mm,											% Seitenabstand Rechts
top=25mm,											% Seitenabstand Oben
bottom=25mm} 										% Seitenabstand Unten

  


\RequirePackage{tabularx}



\newcommand{\myRule}[3][black]{\textcolor{#1}{\rule[2mm]{#2}{#3}}}
\renewcommand{\dateseparator}{ / }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




\pagestyle{fancy}
\fancyhf{}
\renewcommand\footrule{\begin{minipage}{1\textwidth}
\myRule[gray]{\textwidth}{1pt}
\end{minipage}\par}%

\renewcommand\headrule{
\begin{minipage}{1\textwidth}
\myRule[gray]{\textwidth}{1pt}
\end{minipage}}%

\AtBeginDocument{%
\lhead{\textit{Autor:} \autor}%
\chead{\begin{Large}Therapeutische Sitzung Nr. \nummer \end{Large}}%
\rhead{\today}%
\cfoot{Seite \thepage\ von \pageref{LastPage}}
%\vspace*{.2cm}
\noindent}

\endinput











