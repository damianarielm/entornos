\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gslides}[]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[11pt,a4paper]{article}

\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{color}

\RequirePackage{mdframed}
\RequirePackage{environ}
\NewEnviron{hide}{}{}

\RequirePackage[left=2cm,top=3cm,right=15mm,bottom=2.5cm]{geometry}

\RequirePackage{amssymb}
%\RequirePackage{amsmath}
\RequirePackage{enumerate}

\renewcommand{\figurename}{Figura}
\renewcommand{\tablename}{Tabla}
\renewcommand{\theenumi}{\bf\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii}}
\renewcommand{\labelenumi}{\theenumi)}
\renewcommand{\labelenumii}{\theenumii.}

% Para qué es esto?
% \newcommand{\under}[1]{\underline{\rule[-.40ex]{0cm}{0cm}#1}}
\newcommand{\const}[1]{{\bf #1}}

\usepackage{parskip}

\def\today{\number\day/\number\month/\number\year}
\setlength{\parindent}{0pt}
\renewcommand{\footrulewidth}{0.4pt}
\addtolength{\textheight}{-40pt}
\addtolength{\headheight}{59pt}

\newcounter{problema}

% TODO: Uniformidad. Definir entornos para no usar contador, etc.

\newenvironment{problema}[1][\unskip]
{\stepcounter{problema}\textbf{\arabic{problema} #1.~}}
{}

\newenvironment{ejemplo}[1][\unskip]
{\textbf{Ejemplo} #1.~}
{}

\newenvironment{nota}[1][\unskip]
{\textbf{Nota #1:}~}
{}

\newcounter{ejercicio}

\newenvironment{ejercicio}
{\stepcounter{ejercicio}\textbf{Ejercicio \arabic{ejercicio}.~}}
{}

%%% Comentarios
\newif\ifcomments\commentsfalse
\newcommand{\comm}[3]{\ifcomments{{\color{#1}[#2: #3]}}\fi}
\newcommand{\guido}[1]{\comm{blue}{Guido}{#1}}

\newenvironment{solucionOff}
{\hide}
{\endhide}

\newenvironment{solucionOn}
{\begin{mdframed}\textbf{Solución.}~}
{\end{mdframed}}

\newenvironment{solucion}
{\solucionOff}
{\endsolucionOff}

% Correr este comando en el .tex para hacer visibles a los entornos solucion
\newcommand{\soluciones}[0]{
	\renewenvironment{solucion}
		{\solucionOn}
		{\endsolucionOn}
}

\def\materiastr{}

\def\logofile{}
\newif\iflogo
\newif\ifdatos
\logofalse
\datostrue

\def\datosalumno{Nombre y Apellido:\hspace{200pt}\hrule\medskip}

\newcommand{\logo}[1]{\def\logofile{#1}\logotrue}
\newcommand{\materia}[1]{\def\materiastr{#1}}

\title{}

\newcommand{\parcial}[1]{
	\title{Examen Parcial {#1}}
	\datostrue
}

\newcommand{\recuperatorio}[1]{
	\title{Examen Recuperatorio de Parcial {#1}}
	\datostrue
}

\newcommand{\final}{
	\title{Examen Final}
	\datostrue
}

\newcommand{\practica}[1]{
	\title{Práctica #1}
	\date{}
	\datosfalse
}

\newcommand{\trabajopractico}[1]{
	\title{Trabajo práctico #1}
	\date{}
	\datosfalse
}

% Si no hay shorttitle, usar title
\providecommand{\shorttitle}{\@title}

\newcommand{\leyenda}[0]{
	\begin{tabular}{l}
		\textsc{Facultad de Ciencias Exactas, Ingeniería y Agrimensura}\\
		\textsc{Escuela de Ciencias Exactas y Naturales}\\
		\textsc{Departamento de Ciencias de la Computación}\\
		\textsc{\materiastr}\\
	\end{tabular}
}

\fancypagestyle{ps_primera}{
	\iflogo
		\lhead{
			\begin{minipage}{3cm}
				\includegraphics[width=2.7cm,height=2.7cm]{\logofile}
			\end{minipage}
		}
		\rhead{\leyenda}
	\else
		\lhead{\leyenda}
	\fi

	\lfoot{\small \shorttitle}
	\cfoot{\small \@date}
	\rfoot{\small Página \thepage}
}

\fancypagestyle{ps_resto}{
	\lhead{\small \materiastr}
	\chead{}
	\rhead{}

	\lfoot{\small \shorttitle}
	\cfoot{\small \@date}
	\rfoot{\small Página \thepage}
}

\pagestyle{ps_resto}

\def\maketitle{%
	\thispagestyle{ps_primera}%
	\ifdatos\datosalumno\fi%
	\begin{center}
		\Large\bf \@title
	\end{center}
}

% TODO: extender para poder usar otros lenguajes
\RequirePackage{listings}
\lstset{
	basicstyle=\ttfamily,
	language=C,
	keywordstyle=\color{blue},
	keepspaces=true,
	showstringspaces=false,
	columns=flexible,
	morekeywords=inline,
	morekeywords=bool,
}

\newcommand{\cc}[1]{\lstinline`#1`}
\newcommand{\csource}[1]{\lstinputlisting[basicstyle=\ttfamily\small]{#1}}
