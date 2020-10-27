\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{testclass}[2019/09/11]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

\LoadClass[a4paper,twoside]{article}

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}

\newcommand{\cdm}{Castle del Monte}