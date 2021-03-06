%-----------
% Required
%-----------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mv_cv}[2020/01/11 resume]
\LoadClass{article}

%-----------
% Color
%-----------

\RequirePackage{color}
\RequirePackage{xcolor}

\definecolor{darkgray}{HTML}{606060}
\definecolor{gray}{HTML}{bfbfbf}
\definecolor{blue}{HTML}{3366ff}

%-----------
% Fonts
%-----------

\RequirePackage[quiet]{fontspec}

\defaultfontfeatures{Mapping=text-text}
\setmainfont{Helvetica}
 
%-----------
% Header
%-----------

\RequirePackage{tikz}
\RequirePackage{parskip}

\newcommand{\header}[2]{
    \begin{tikzpicture}[remember picture, overlay]
        \node [rectangle, fill=gray, anchor=north, minimum width=\paperwidth,
            minimum height=3cm] (box) at (current page.north){};
        \node [anchor=east, align=left, shift={(0mm, 3mm)}]
            (name) at (box){\color{blue}\fontsize{40}{48} \selectfont #1};
        \node [anchor=north, align=left, shift={(15.3mm, -7.5mm)}]
            (desc) at (name){\color{darkgray}\fontsize{12}{16} \selectfont #2};
    \end{tikzpicture}
    \vspace{-0.5cm}
}


%-----------
% Sidebar
%-----------

\RequirePackage{textpos}

\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}
\TPMargin{0.58cm}

\newenvironment{sidebar}
    {\begin{textblock}{5.3}(-5.3, 0)
     \begin{flushright}
    }
    {\end{flushright}
     \end{textblock}
    }

\newcommand{\sideitem}[2]{
    \textbf{\color{blue}\fontsize{12}{14} \selectfont #1}\\
    {\fontsize{10}{12} \selectfont #2}\\
    \vspace{0.4cm}
}

%-----------
% Main
%-----------

\usepackage[textwidth=6in, right=0.75in, left=2.0in, bottom=0.5in]{geometry}
\RequirePackage{hyphenat}

\newcommand{\content}[1]{
    {\nohyphens{\fontsize{10}{12} \selectfont #1}}
}

\newenvironment{explist}
    {\vspace{-0.2cm}
     \begin{itemize}
    }
    {\end{itemize}}

\newcommand{\expitem}[4]{
    \vspace{0.1cm}
    \item[] {\color{darkgray}\fontsize{10}{12} \selectfont #1} | \textbf{\fontsize{10}{12} \selectfont #2}\vspace{0.1cm}\\
    \textit{#3}
    \begin{itemize}
        \item[]{\fontsize{10}{12} \selectfont #4}
    \end{itemize}
    \vspace{0.2cm}
}

\renewcommand*{\section}{
    \@startsection {section}{1}{\z@}
    {0.1cm}
    {0.1cm}
    {\color{blue}\normalfont\fontsize{14}{16}\bfseries}
}
