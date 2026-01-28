%%
%% This is file `cqjtuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cqjtuthesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2024 by CQJTUThesis Development Team
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%%    https://www.latex-project.org/lppl.txt
%% 
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\ProvidesClass{cqjtuthesis}
    [2024/01/28 v1.0 Chongqing Jiaotong University Thesis Template]
\LoadClass[a4paper,12pt,openany,oneside]{ctexbook}
\RequirePackage{ifxetex}
\RequireXeTeX
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{caption}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage{indentfirst}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage[sort&compress,square,super]{natbib}
\RequirePackage{hyperref}
\RequirePackage{etoolbox}
\RequirePackage[normalem]{ulem}
\RequirePackage{CJKnumb}
\geometry{
  a4paper,
  top=2.5cm,
  bottom=2.0cm,
  left=3.0cm,
  right=2.0cm,
  headheight=1cm,
  headsep=0.5cm,
  footskip=1cm
}
% 字体设置
\setmainfont{Times New Roman}
\setCJKmainfont{SimSun}[AutoFakeBold=2.5,ItalicFont=KaiTi]
\setCJKsansfont{SimHei}[AutoFakeBold=2.5]
\setCJKmonofont{FangSong}
\pagestyle{fancy}
\newcommand\cohort[1]{\def\@cohort{#1}}
\newcommand\@cohort{}
\newcommand\cqjtuthesis@headertext{%
  重庆交通大学%
  \ifdefempty{\@cohort}{}{ \@cohort 届}%
  \ifdefempty{\@major}{}{ \@major}%
  毕业设计（论文）%
}
\newcommand\cqjtuthesis@applyfancy{%
  \fancyhf{}
  \fancyhead[C]{\zihao{-5}\songti \cqjtuthesis@headertext}
  \fancyfoot[C]{\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{frontmatter}{
  \fancyhf{}
  \fancyfoot[C]{\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\cqjtuthesis@applyfancy
\let\cqjtuthesis@frontmatter\frontmatter
\renewcommand{\frontmatter}{%
  \cqjtuthesis@frontmatter
  \pagestyle{frontmatter}\let\ps@plain\ps@frontmatter
}
\let\cqjtuthesis@mainmatter\mainmatter
\renewcommand{\mainmatter}{%
  \cqjtuthesis@mainmatter
  \pagestyle{fancy}\let\ps@plain\ps@fancy
  \cqjtuthesis@applyfancy
}
% 章节编号格式 - 使用ctex设置
\ctexset{
  chapter={
    format=\centering\zihao{3}\heiti,
    name={第,章},
    number=\arabic{chapter},
    beforeskip=-10pt,
    afterskip=20pt
  }
}

\titleformat{\section}
  {\zihao{4}\heiti}
  {\thesection}
  {1em}
  {}
\titlespacing*{\section}{0pt}{12pt}{6pt}

\titleformat{\subsection}
  {\zihao{-4}\heiti}
  {\thesubsection}
  {1em}
  {}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}

\titleformat{\subsubsection}
  {\zihao{-4}\heiti}
  {\thesubsubsection}
  {1em}
  {}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}
\renewcommand{\contentsname}{\zihao{3}\heiti 目\quad 录}
\titlecontents{chapter}[0pt]
  {\zihao{-4}\songti}
  {\thecontentslabel\quad}
  {}
  {\titlerule*[6pt]{.}\contentspage}

\titlecontents{section}[2em]
  {\zihao{-4}\songti}
  {\thecontentslabel\quad}
  {}
  {\titlerule*[6pt]{.}\contentspage}

\titlecontents{subsection}[4em]
  {\zihao{-4}\songti}
  {\thecontentslabel\quad}
  {}
  {\titlerule*[6pt]{.}\contentspage}
\captionsetup{
  labelsep=space,
  font={small,bf},
  textfont=small,
  justification=centering,
  singlelinecheck=false
}
\captionsetup[figure]{
  position=bottom,
  aboveskip=6pt,
  belowskip=6pt
}
\captionsetup[table]{
  position=top,
  aboveskip=6pt,
  belowskip=6pt
}

\DeclareCaptionFormat{cqjtu}{{\heiti\zihao{5}#1#2}#3}
\captionsetup{format=cqjtu}

\@addtoreset{figure}{chapter}
\@addtoreset{table}{chapter}
\@addtoreset{equation}{chapter}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\newcommand\ctitle[1]{\def\@ctitle{#1}}
\newcommand\etitle[1]{\def\@etitle{#1}}
\newcommand\@ctitle{}
\newcommand\@etitle{}

\renewcommand\title[1]{\ctitle{#1}}
\newcommand\englishtitle[1]{\etitle{#1}}

\newcommand\studentid[1]{\def\@studentid{#1}}
\newcommand\@studentid{}

\newcommand\school[1]{\def\@school{#1}}
\newcommand\@school{}

\newcommand\major[1]{\def\@major{#1}}
\newcommand\@major{}

\newcommand\classnum[1]{\def\@classnum{#1}}
\newcommand\@classnum{}

\newcommand\advisor[1]{\def\@advisor{#1}}
\newcommand\@advisor{}

\newcommand\completedate[1]{\def\@completedate{#1}}
\newcommand\@completedate{\the\year 年\the\month 月}
\newcommand\coverlogo[1]{\def\@coverlogo{#1}}
\newcommand\coverlogofile[1]{\def\@coverlogofile{#1}}
\newcommand\@coverlogo{blue}
\newcommand\@coverlogofile{}
\newlength\cqjtuthesis@covertitlewidth
\setlength{\cqjtuthesis@covertitlewidth}{12cm}
\newcommand\cqjtuthesis@coverline{%
  \vbox{\hrule width \cqjtuthesis@covertitlewidth height 0.4pt}%
}
\newcommand\cqjtuthesis@covertitlebox{%
  \begingroup
  % 统一使用单行模式，文字下面一条下划线
  {\zihao{-3}\heiti\parbox{\cqjtuthesis@covertitlewidth}{%
    \centering
    \setlength{\ULdepth}{2pt}%
    \renewcommand{\ULthickness}{0.4pt}%
    \uline{\makebox[\cqjtuthesis@covertitlewidth][c]{\@ctitle}}%
  }}%
  \endgroup
}
\newcommand\makecover{
  \begin{titlepage}
    \thispagestyle{empty}
    \begin{center}
      % 校徽和校名
      \vspace*{30pt}
      \ifdefempty{\@coverlogofile}{%
        \ifdefstring{\@coverlogo}{blue}{\gdef\cqjtuthesis@logo{figures/cqjtu-logo-blue.png}}{%
          \ifdefstring{\@coverlogo}{red}{\gdef\cqjtuthesis@logo{figures/cqjtu-logo-red.tif}}{%
            \ifdefstring{\@coverlogo}{legacy}{\gdef\cqjtuthesis@logo{figures/cqjtu-logo-legacy.png}}{%
              \gdef\cqjtuthesis@logo{figures/cqjtu-logo}%
            }%
          }%
        }%
      }{%
        \gdef\cqjtuthesis@logo{\@coverlogofile}%
      }%
      \includegraphics[width=10cm]{\cqjtuthesis@logo}\\[10pt]

      % 论文类型
      \vspace{20pt}
      {\zihao{2}\heiti 本科毕业论文（设计）}\\[30pt]

      % 题目
      \vspace{10pt}
      \begin{minipage}[c]{14cm}
        \centering
        {\zihao{-3}\heiti 题目：\cqjtuthesis@covertitlebox}
      \end{minipage}

      \vfill

      % 信息表格
      \begin{minipage}[c]{12cm}
        \zihao{-3}\kaishu
        \begin{tabular}{cl}
          学\quad\quad 院：& \uline{\makebox[8cm][l]{\@school}} \\[8pt]
          专\quad\quad 业：& \uline{\makebox[8cm][l]{\@major}} \\[8pt]
          学生姓名：& \uline{\makebox[8cm][l]{\@author}} \\[8pt]
          学\quad\quad 号：& \uline{\makebox[8cm][l]{\@studentid}} \\[8pt]
          指导教师：& \uline{\makebox[8cm][l]{\@advisor}} \\[8pt]
          完成时间：& \uline{\makebox[8cm][l]{\@completedate}} \\
        \end{tabular}
      \end{minipage}

      \vspace{30pt}

      % 底部校名
      {\zihao{3}\songti\bfseries 重庆交通大学}\\[5pt]
      {\zihao{4} CHONGQING JIAOTONG UNIVERSITY}

      \vspace{20pt}
    \end{center}
  \end{titlepage}
  \clearpage
}
\newcommand\makedeclaration{
  \cleardoublepage
  \thispagestyle{empty}

  \begin{center}
    {\zihao{-3}\heiti 本科毕业论文（设计）原创性声明}
  \end{center}

  \vspace{12pt}

  {\zihao{-4}\songti
  本人郑重声明：所提交的毕业论文（设计），是本人在导师指导下，独立进行研究工作所取得的成果。除文中已注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文研究做出过重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律后果由本人承担。

  \vspace{12pt}

  \hspace*{6cm}作者签名（亲笔）：\uline{\hspace{3cm}}

  \vspace{6pt}

  \hspace*{6cm}年\quad 月\quad 日
  }

  \vspace{30pt}

  \begin{center}
    {\zihao{-3}\heiti 本科毕业论文（设计）版权使用授权书}
  \end{center}

  \vspace{12pt}

  {\zihao{-4}\songti
  本毕业论文（设计）作者完全了解学校有关保留、使用学位论文的规定，本科生在校攻读期间毕业论文（设计）工作的知识产权单位属重庆交通大学，同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅；本人授权重庆交通大学可以将毕业论文（设计）的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编毕业设计（论文）。

  \vspace{12pt}

  \hspace*{1cm}作者签名（亲笔）：\uline{\hspace{3cm}}

  \vspace{6pt}

  \hspace*{1cm}年\quad 月\quad 日

  \vspace{6pt}

  \hspace*{1cm}导师签名（亲笔）：\uline{\hspace{3cm}}

  \vspace{6pt}

  \hspace*{1cm}年\quad 月\quad 日
  }

  \clearpage
}
\newenvironment{cabstract}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{摘要}
  \begin{center}
    {\zihao{-3}\heiti 摘\quad 要}
  \end{center}
  \vspace{12pt}
  \par\zihao{-4}\songti
  \setstretch{1.5}
}{\clearpage}

\newcommand\ckeywords[1]{
  \vspace{12pt}
  \noindent{\zihao{-4}\heiti 关键词：}\zihao{-4}\songti #1
}
\newenvironment{eabstract}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{Abstract}
  \begin{center}
    {\zihao{-3}\bfseries \@etitle}

    \vspace{12pt}

    {\zihao{-3}\bfseries Abstract}
  \end{center}
  \vspace{12pt}
  \par\zihao{-4}
  \setstretch{1.5}
}{\clearpage}

\newcommand\ekeywords[1]{
  \vspace{12pt}
  \noindent{\zihao{-4}\bfseries Key Words: }\zihao{-4} #1
}
\bibliographystyle{gbt7714-numerical}
\renewcommand\bibname{参考文献}
\setlength{\bibsep}{0pt}
\AtBeginEnvironment{thebibliography}{\zihao{5}\songti\setstretch{1}}

% Force citations to superscript form
\let\cqjtuthesis@origcite\cite
\renewcommand{\cite}[2][]{\textsuperscript{\cqjtuthesis@origcite[#1]{#2}}}
\newenvironment{acknowledgement}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{致谢}
  \begin{center}
    {\zihao{-3}\heiti 致\quad 谢}
  \end{center}
  \vspace{12pt}
  \par\zihao{-4}\songti
}{\clearpage}
\renewcommand\appendix{
  \clearpage
  \setcounter{chapter}{0}
  \renewcommand\thechapter{附录\Alph{chapter}}
  \titleformat{\chapter}
    {\centering\zihao{3}\heiti}
    {\thechapter}
    {1em}
    {}
}
\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=black,
  urlcolor=blue,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdftitle={\@ctitle},
  pdfauthor={\@author},
  pdfsubject={重庆交通大学本科毕业论文},
  pdfkeywords={LaTeX, CQJTUThesis}
}
\setlist{topsep=6pt, itemsep=0pt, parsep=0pt, partopsep=0pt}
\setlength{\floatsep}{10pt plus 2pt minus 2pt}
\setlength{\textfloatsep}{12pt plus 2pt minus 2pt}
\setlength{\intextsep}{10pt plus 2pt minus 2pt}
\setlength{\abovedisplayskip}{10pt plus 2pt minus 2pt}
\setlength{\belowdisplayskip}{10pt plus 2pt minus 2pt}
\setlength{\abovedisplayshortskip}{6pt plus 2pt minus 2pt}
\setlength{\belowdisplayshortskip}{6pt plus 2pt minus 2pt}
\setlength{\emergencystretch}{1em}
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\linespread{1.5}
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\endinput
%%
%% End of file `cqjtuthesis.cls'.
