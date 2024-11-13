% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "1.0",
%     date            = "24 January 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "send email to suchow@post.harvard.edu",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/01/24 v1.0 Dissertate Class]
\LoadClass[12pt, oneside, letterpaper]{book}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}

\RequirePackage{color}
\usepackage[hyperindex=true]{hyperref}
\usepackage{cleveref}
\usepackage{imakeidx}
\usepackage{booktabs}
\usepackage{array}
\usepackage{caption}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage[palatino]{quotchap}

\RequirePackage{kvoptions}
\DeclareStringOption{School}[]
\ProcessKeyvalOptions*
\RequirePackage{packages/\Dissertate@School/style}

\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{lettrine}
%\RequirePackage[super,comma,numbers]{natbib}
%\RequirePackage{natbib}
%renewcommand{\bibnumfmt}[1]{[#1]}
%\RequirePackage[width=5.75in, letterpaper]{geometry}

% ADDED BELOW
\RequirePackage[margin=1in, letterpaper]{geometry}
\RequirePackage{fancyhdr}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % Clear default header/footer
% Set up footer to include chapter name
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\ \ #1}{}}
\makeindex[name=terms, title=Subject Index]
\makeindex[name=people, title=Author Index]

% Use \leftmark to show the chapter name in the footer, including number
%\fancyfoot[C]{\nouppercase{\leftmark}} 
%\fancyfoot[R]{\thepage} % Keep the page number in the right footer





%ADDED ABOVE

\usepackage[titletoc, title]{appendix} % This removes the prefix from the TOC. Added 2024 Nov 8
%\usepackage[titletoc]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}\arabic{section}}

%============== ADDED 12 NOV ==============%
% Define Appendix label formatting
\usepackage{appendix}
\renewcommand{\chaptermark}[1]{%
  \markboth{Appendix \thechapter}{}%
}

% Custom header settings
\fancyhf{} % Clear all header and footer fields
\fancyhead[L]{\nouppercase{\leftmark}} % Left header shows the chapter name without "Chapter"

%===========================================%








% ADDED BELOW
\usepackage{pdflscape} %landscape page


%\usepackage{accessibility} % for general accessibility features

\usepackage{multicol}
%\RequirePackage{fancyhdr}
%\usepackage{fancyhdr}
%\pagestyle{fancy}
%\fancyhf{} % Clear default header/footer

% Set up header to include chapter name centered
\renewcommand{\chaptermark}[1]{\markboth{Chapter \thechapter\ - #1}{}}

\fancyhead[C]{\nouppercase{\leftmark}}
\usepackage{placeins}

% Set footer to have page number on the right
%\fancyfoot[R]{\thepage}

%IN PROCESS BELOW
% Redefine the footnote rule to match the highlight color
\renewcommand{\footnoterule}{%
    \vspace{1em} % Space before the line
    \noindent
    \color{SchoolColor} % Set the color to your desired highlight color
    \hrule width \linewidth height 0.5pt % Line width matches page width within margins
    \color{black} % Set the color back to black for the text
    \vspace{0.5em} % Space after the line
}

% IN PROCESS ABOVE


% ADDED ABOVE


\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\setcounter{tocdepth}{3}

\RequirePackage{url}
\usepackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
% \usepackage{fixltx2e}
\RequirePackage{ragged2e}

%\renewcommand\bibname{References}
%\addcontentsline{toc}{chapter}{References}

%\renewcommand\listfigurename{Listing of figures}
%\addcontentsline{toc}{chapter}{List of figures}

\RaggedRight

\parindent 12pt
\RequirePackage{mathspec}

\setmathsfont(Digits,Latin,Greek)[Numbers={Proportional},SizeFeatures={{Size=-8, OpticalSize=8},{Size= 8-, OpticalSize=12}},]{EB Garamond}
\setmathrm{EB Garamond}

\widowpenalty=300
\clubpenalty=300

\defaultfontfeatures{Mapping=tex-text}
\newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}
\setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
\setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
\setmonofont[Scale=MatchLowercase]{Noto Mono} % Font substitution for Source Code Pro

\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
								textfont={sf,footnotesize,singlespacing},
								justification={centering},
								singlelinecheck=false,
								margin=0pt,
								figurewithin=chapter,
								tablewithin=chapter]{caption}

%\renewcommand{\thefootnote}{\fnsymbol{footnote}} %Symbol Footnotes, not numbers.
\renewcommand{\thefootnote}{\arabic{footnote}} %Arabic numeral footnotes. 


%\onehalfspacing
%\doublespacing

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent
