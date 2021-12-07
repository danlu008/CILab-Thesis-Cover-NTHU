% This is a thesis template of NTHU in LaTex, which is modified by Hao-Wei Lee
% author: Tz-Huan Huang [http://www.csie.ntu.edu.tw/~tzhuan]

% ----------------------------------------------------------------------------
% "THE CHOCOLATE-WARE LICENSE":
% Tz-Huan Huang wrote this file. As long as you retain this notice you
% can do whatever you want with this stuff. If we meet some day, and you think
% this stuff is worth it, you can buy me a chocolate in return Tz-Huan Huang
% ----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\DeclareRobustCommand{\@setspacing}{\doublespacing}
\DeclareOption{singlespacing}{\gdef\@setspacing{\singlespacing}}
\DeclareOption{onehalfspacing}{\gdef\@setspacing{\onehalfspacing}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt]{book}

% Required packages
\RequirePackage[top=1in,left=1in,bottom=1in,right=1in]{geometry}
\RequirePackage{xeCJK}
\RequirePackage{setspace}
\RequirePackage{tocbibind}
\RequirePackage{hyperref}
\RequirePackage{tikz}
\RequirePackage[encoding=UTF8]{zhnumber}

% Declarations
\DeclareRobustCommand{\university}[2]{\gdef\@universityen{#1}\gdef\@universityzh{#2}}
\DeclareRobustCommand{\college}[2]{\gdef\@collegeen{#1}\gdef\@collegezh{#2}}
\DeclareRobustCommand{\book}[2]{\gdef\@booken{#1}\gdef\@bookzh{#2}}
\DeclareRobustCommand{\institute}[2]{\gdef\@instituteen{#1}\gdef\@institutezh{#2}}
\DeclareRobustCommand{\division}[1]{\gdef\@divisionzh{#1}}
\DeclareRobustCommand{\title}[2]{\gdef\@titleen{#1}\gdef\@titlezh{#2}}
\DeclareRobustCommand{\author}[2]{\gdef\@authoren{#1}\gdef\@authorzh{#2}}
\DeclareRobustCommand{\studentid}[1]{\gdef\@studentid{#1}}
\DeclareRobustCommand{\advisor}[2]{\gdef\@advisoren{#1}\gdef\@advisorzh{#2}}
\DeclareRobustCommand{\defenseyear}[2]{\gdef\@yearen{#1}\gdef\@yearzh{#2}}
\DeclareRobustCommand{\defensemonth}[2]{\gdef\@monthen{#1}\gdef\@monthzh{#2}}
\DeclareRobustCommand{\defenseday}[1]{\gdef\@day{#1}}
\DeclareRobustCommand{\abstractname}[2]{\gdef\@abstractnameen{#1}\gdef\@abstractnamezh{#2}}
\DeclareRobustCommand{\acknowledgements}[2]{\gdef\@acknowledgementsen{#1}\gdef\@acknowledgementszh{#2}}


\DeclareRobustCommand{\makecover}{
    \begin{titlepage}
        \begin{center}
            % \vspace{88888cm} 
            \fontsize{24}{30}\selectfont
            \makebox[10cm][s]{\@universityzh}\\
            \makebox[10cm][s]{\@bookzh}
            \end{center}
            \vspace{3cm}           
            \begin{center}        	 
                \fontsize{20}{25}\selectfont
                \@titlezh \\
                \@titleen
            \end{center}          
            \vspace{5cm}      
            \begin{flushleft}       	  
                \fontsize{20}{30}\selectfont
                \hspace{1.2cm}系\hspace{1.4cm}別：\@institutezh \\
                \hspace{1.2cm}學\hspace{1.4cm}號：\@studentid \\
                \hspace{1.2cm}研\hspace{0.35cm}究\hspace{0.35cm}生：\@authorzh (\@authoren) \\
                \hspace{1.2cm}指導教授：\@advisorzh (\@advisoren)
            \end{flushleft}
            \vspace{1.5cm}
            \begin{center}
                \fontsize{20}{15}\selectfont
                \makebox[12cm][s]{中華民國\@yearzh 年 \@monthzh 月}
            \end{center}
            \vfill
        \end{center}
    \end{titlepage}
}

%\setcounter{tocdepth}{2}
%\pagestyle{plain}
\@setspacing