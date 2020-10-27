\ProvidesClass{abgabe}
\LoadClass{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{keyval}%
\RequirePackage{listings}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{bbold}

\RequirePackage[yyyymmdd]{datetime}
\renewcommand{\dateseparator}{ -- }

\def\name{Julian Lorenz}%
\def\mtr{3383863}
\def\docdate{\today}%
\def\fach{Fach - Offen}
\def\nr{0}
\def\mp{0}

\define@key{abgabe.cls}{name}[Julian Lorenz]{%
  \def\name{#1}}
\define@key{abgabe.cls}{mtr}[3383863]{%
  \def\mtr{#1}}
\define@key{abgabe.cls}{docdate}[\today]{%
  \def\docdate{#1}}
\define@key{abgabe.cls}{fach}[Fach - Offen]{%
  \def\fach{#1}}
\define@key{abgabe.cls}{nr}[0]{%
  \def\nr{#1}}
\define@key{abgabe.cls}{mp}[0]{%
  \def\mp{#1}}
\RequirePackage[a4paper]{geometry}	

\setlength{\topskip}{\ht\strutbox} 					% behebt Warnung von geometry 
\setlength{\headheight}{1.1\baselineskip}   		% Headheight hochsetzten 
\geometry{paper=a4paper,
left=25mm,											% Seitenabstand Links
right=15mm,											% Seitenabstand Rechts
top=25mm,											% Seitenabstand Oben
bottom=25mm} 										% Seitenabstand Unten

\ExecuteOptionsX{name, mtr, docdate, fach, nr, mp}
\ProcessOptionsX% 

\RequirePackage{tabularx}
\newcounter{aufgabe}[section]
\newenvironment{aufgabe}[3][]{\newpage\refstepcounter{aufgabe}
\begin{center}
\begin{tabularx}{\textwidth}{Xl}
\textbf{Aufgabe \nr.\theaufgabe }$\quad$\textit{#2}&\textbf{Punkte:}$\quad$\rule{0.5cm}{0.4pt} $/$ #3
\end{tabularx}
\end{center}
\rmfamily\noindent}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\renewcommand\footrule{\begin{minipage}{1\textwidth}
\hrule width \hsize height 2pt \kern 1mm \hrule width \hsize   
\end{minipage}\par}%

\renewcommand\headrule{
\begin{minipage}{1\textwidth}
\hrule width \hsize \kern 1mm \hrule width \hsize height 2pt 
\end{minipage}}%

\AtBeginDocument{%
\lhead{\name\\ \mtr}%
\chead{\fach \\ Übungsblatt \nr}%
\rhead{\docdate \\$\sum\quad$\rule[-1mm]{0.5cm}{0.4pt} $/$ \mp}%
\cfoot{Seite \thepage\ von \pageref{LastPage}}
}

\endinput











