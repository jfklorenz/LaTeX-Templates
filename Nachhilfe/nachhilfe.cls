\ProvidesClass{nachhilfe}
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

\def\tutor{Tutor}%
\def\docdate{\today}%
\def\fach{Fach}
\def\thema{Thema}

\define@key{nachhilfe.cls}{tutor}[Tutor]{%
  \def\tutor{#1}}
\define@key{nachhilfe.cls}{docdate}[\today]{%
  \def\docdate{#1}}
\define@key{nachhilfe.cls}{fach}[Fach]{%
  \def\fach{#1}}
\define@key{nachhilfe.cls}{thema}[Thema]{%
  \def\thema{#1}}

\RequirePackage[a4paper]{geometry}	

\setlength{\topskip}{\ht\strutbox} 					% behebt Warnung von geometry 
\setlength{\headheight}{1.1\baselineskip}   		% Headheight hochsetzten 
\geometry{paper=a4paper,
left=25mm,											% Seitenabstand Links
right=15mm,											% Seitenabstand Rechts
top=25mm,											% Seitenabstand Oben
bottom=25mm} 										% Seitenabstand Unten

\ExecuteOptionsX{tutor, docdate, fach, thema}
\ProcessOptionsX% 

\RequirePackage{tabularx}
\newcounter{aufgabe}[section]
\newenvironment{aufgabe}[2][]{\newpage\refstepcounter{aufgabe}
\begin{center}
\begin{tabularx}{\textwidth}{p{2cm}l}
\textbf{Aufgabe \theaufgabe }&\textit{#2}
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
\lhead{\tutor}%
\chead{\begin{large}\fach\end{large} \\ \thema}%
\rhead{\docdate}%
\cfoot{Seite \thepage\ von \pageref{LastPage}}
}

\endinput











