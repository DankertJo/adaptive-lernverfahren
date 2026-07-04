\ProvidesClass{fumi}[2018/05/14 v0.1, by Niels Seidel, Bonn]


% Passes and class options to the underlying article class
\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{scrbook}
\PassOptionsToPackage{ngerman}{babel}
}
\ProcessOptions



% Load LaTeX's article class with the `titlepage' option so that \maketitle creates a title page, not just a title block
\LoadClass[titlepage]{scrbook}

%\pdfmapfile{=frutiger.map}
%\renewcommand*{\familydefault}{rpftr}

\usepackage[utf8]{inputenc}
%\usepackage{frutiger}
\usepackage[T1]{fontenc}
\usepackage{lmodern}
\usepackage{eurosym}
\usepackage{selinput}

%\SelectInputMappings{adieresis={ä},germandbls={ß},Euro={~}}

\usepackage{amsmath,amssymb}
\numberwithin{figure}{chapter}%% figure counter includes the current chapter (1.2 for the 2nd pictur in the first chapter)
\numberwithin{table}{chapter}
\numberwithin{equation}{chapter}

\usepackage{amssymb,amsmath,mathtools,amsthm,latexsym}  % math
\def\tm{\leavevmode\hbox{$\rm {}^{TM}$}}
% This a new environment called Definition: Use it like \begin{definition} \dots \end{definition} 
\newtheorem{definition}{Definition}



\makeatletter
\newcommand{\mathleft}{\@fleqntrue\@mathmargin0pt}
\newcommand{\mathcenter}{\@fleqnfalse}
\makeatother
\usepackage{enumerate}
\usepackage[vcentering,dvips=false]{geometry} % showframe   :: rahmen frame rand

\geometry{
	papersize={210mm,297mm}, % A4
%	width={104mm},
%	height={174mm},
%	nohead,
%	pdftex,
	top={20mm},
	bottom={30mm},
%	oneside,
	inner={25mm},
	outer={25mm},
	portrait,
	footskip={15mm},
	headheight={20mm}
}

\parindent0pt
\parskip 1ex

\usepackage{ifoddpage}
\usepackage{calc}
\usepackage{lipsum}
\usepackage{changepage}

% figures
\usepackage{graphicx}
\graphicspath{{./images/}}
\DeclareGraphicsExtensions{.pdf,.jpeg,.png,.jpg} 
\usepackage{caption}



% number footnotes across chapters    
\usepackage{chngcntr}
\counterwithout{footnote}{chapter} 

\usepackage{blindtext}
\usepackage[bottom]{footmisc}
\usepackage[german]{babel}
\usepackage{wrapfig}
\usepackage{float}
\usepackage{datetime}
\usepackage{titletoc}

\usepackage{csquotes}

% Table environment
\usepackage{tabularx}
\usepackage{array}
\newcolumntype{Z}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{L}{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}X}

% Include a PDF
\usepackage{pdfpages}

% Todo notes
\usepackage{todonotes}

\usepackage{lmodern}
%\usepackage[utf8]{inputenc}



\usepackage[bookmarks,hypertexnames=false,debug,hidelinks]{hyperref}
\usepackage{bookmark}
\usepackage{nameref} 
\usepackage[listformat=empty]{caption}
\captionsetup{justification=raggedright,singlelinecheck=false}
\usepackage{marginnote}
\usepackage[export]{adjustbox}
\usepackage{tocloft}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}



\setlength{\cftfignumwidth}{-15pt}
\setlength{\cfttabnumwidth}{-15pt}
\DeclareCaptionType{formel}[][Formelverzeichnis]
\captionsetup[formeln]{labelformat=empty}


%% header styles
\usepackage{fancyhdr}
\pagestyle{empty}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
   \fancyfoot{}     % clear all the header fields 
   \fancyfoot[RO]{\small\thepage}
   \fancyfoot[LE]{\small\thepage} 
   \fancyhead[RO]{\small\textsc{\leftmark}}
   \fancyhead[LE]{\small\textsc{\rightmark}}%\rightmark}
\makeatother

\fancypagestyle{fancyclear}{
\fancyhf{}
   \fancyfoot{}  
   \fancyfoot[RO]{\small\thepage}
   \fancyfoot[LE]{\small\thepage} 
   \fancyhead[RO]{}
   \fancyhead[LE]{}
}

%% Algorithmen
%\usepackage{algorithm}
\usepackage[lined]{algorithm2e}
\usepackage{algpseudocode}
\setlength{\algomargin}{2em}
\setlength{\fboxsep}{10pt}
\setlength{\fboxrule}{0.4pt}
\algnewcommand\algorithmicinput{\textbf{INPUT:}}
\algnewcommand\INPUT{\item[\algorithmicinput]}


%% Listings for code
\usepackage{listings}
\newenvironment{mylisting}
{\begin{list}{}{\setlength{\leftmargin}{1em}}\item\scriptsize\bfseries}
{\end{list}}

\newenvironment{mytinylisting}
{\begin{list}{}{\setlength{\leftmargin}{1em}}\item\tiny\bfseries}
{\end{list}}


%für code listing
\definecolor{lightestyellow}{rgb}{1,1,0.9}
\lstset{
emph={int,for},
emphstyle=\tt\color{red},
backgroundcolor=\color{lightestyellow},
stringstyle=\tt,
basicstyle=\tt,
numbers=left
}

\lstset{ %
  backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
  basicstyle=\footnotesize,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{blue},    % comment style
  deletekeywords={end},            % if you want to delete keywords from the given language
 % escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  frame=single,                    % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=Octave,                 % the language of the code
  morekeywords={*,...},            % if you want to add more keywords to the set
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{green}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=2,                       % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}
\renewcommand{\lstlistingname}{Auflistung}


% citation, bibliography
%\usepackage[round,sort&compress]{natbib} % extended citation styles 
%\usepackage[natbibapa]{plain}
\usepackage{natbib}
\bibliographystyle{apa-good}
\newcommand{\citeN}[2][]{\citet[#1]{#2}}





