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

% 学位类型选项处理
\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=CQJTU, prefix=CQJTU@, setkeys=\kvsetkeys}
\DeclareStringOption[bachelor]{degree}[bachelor]  % bachelor, master, doctor
\DeclareStringOption[academic]{degree-type}[academic]  % academic, professional
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*\relax

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
% 页面设置 - 根据学位类型设置不同参数
\ifdefstring{\CQJTU@degree}{bachelor}{
  % 本科论文页面设置
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
}{
  % 研究生论文页面设置
  % 页眉距顶部 = top - headheight - headsep = 3.0 - 0.5 - 0.5 = 2.0cm ✓
  % 页脚距底部 = footskip = 1.0cm (页脚在页面底部上方1.0cm处)
  \geometry{
    a4paper,
    top=3.0cm,
    bottom=2.5cm,
    left=3.0cm,
    right=3.0cm,
    bindingoffset=0.5cm,
    headheight=0.5cm,
    headsep=0.5cm,
    footskip=1.0cm
  }
}
% 字体设置
% 使用 ctex 宏包的跨平台字体方案
% ctex 会根据操作系统自动配置中文字体：
%   - Windows: 宋体、黑体、楷体、仿宋
%   - macOS: 华文宋体、华文黑体等
%   - Linux: Fandol 字体或其他可用字体
% 使用 \songti, \heiti, \kaishu, \fangsong 命令切换字体
% 英文主字体设置为 Times New Roman（如不可用则使用系统默认）
\IfFontExistsTF{Times New Roman}{%
  \setmainfont{Times New Roman}%
}{%
  % 如果 Times New Roman 不可用，使用 TeX Gyre Termes（兼容字体）
  \IfFontExistsTF{TeX Gyre Termes}{%
    \setmainfont{TeX Gyre Termes}%
  }{}%
}
\pagestyle{fancy}
\newcommand\cohort[1]{\def\@cohort{#1}}
\newcommand\@cohort{}

% 定义学位类型名称
\newcommand\cqjtuthesis@degreename{%
  \ifdefstring{\CQJTU@degree}{doctor}{博士学位论文}{%
    \ifdefstring{\CQJTU@degree}{master}{硕士学位论文}{毕业设计（论文）}%
  }%
}

% 本科论文页眉文字
\newcommand\cqjtuthesis@bachelorheadertext{%
  重庆交通大学%
  \ifdefempty{\@cohort}{}{ \@cohort 届}%
  \ifdefempty{\@major}{}{ \@major}%
  毕业设计（论文）%
}

% 页眉页脚设置
\ifdefstring{\CQJTU@degree}{bachelor}{
  % 本科论文页眉页脚
  \newcommand\cqjtuthesis@applyfancy{%
    \fancyhf{}
    \fancyhead[C]{\zihao{-5}\songti \cqjtuthesis@bachelorheadertext}
    \fancyfoot[C]{\zihao{5}\thepage}
    \renewcommand{\headrulewidth}{0.4pt}
    \renewcommand{\footrulewidth}{0pt}
  }
}{
  % 研究生论文页眉页脚（奇偶页不同）
  \newcommand\cqjtuthesis@applyfancy{%
    \fancyhf{}
    \fancyhead[CE]{\zihao{-5}\songti 重庆交通大学\cqjtuthesis@degreename}
    \fancyhead[CO]{\zihao{-5}\songti \leftmark}
    \fancyfoot[C]{\zihao{-5}\thepage}
    \renewcommand{\headrulewidth}{0.4pt}
    \renewcommand{\footrulewidth}{0pt}
  }
}

\fancypagestyle{frontmatter}{
  \fancyhf{}
  \fancyfoot[C]{\zihao{-5}\thepage}
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
  % 研究生论文全局设置20磅固定行距
  \ifdefstring{\CQJTU@degree}{bachelor}{}{
    \linespread{1.0}
    \setlength{\baselineskip}{20pt}
    \selectfont
  }
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
  {\ifdefstring{\CQJTU@degree}{bachelor}{\zihao{4}\heiti}{\zihao{-3}\heiti}}
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
\renewcommand{\contentsname}{\zihao{3}\heiti 目\quad\quad 录}
\titlecontents{chapter}[0pt]
  {\ifdefstring{\CQJTU@degree}{bachelor}{\zihao{-4}\songti}{\zihao{4}\songti\bfseries}}
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

% 研究生论文额外字段
\newcommand\clc[1]{\def\@clc{#1}}  % 分类号
\newcommand\@clc{}
\newcommand\securitylevel[1]{\def\@securitylevel{#1}}  % 密级
\newcommand\@securitylevel{}
\newcommand\discipline[1]{\def\@discipline{#1}}  % 一级学科
\newcommand\@discipline{}
\newcommand\subdiscipline[1]{\def\@subdiscipline{#1}}  % 二级学科
\newcommand\@subdiscipline{}
\newcommand\professionaltype[1]{\def\@professionaltype{#1}}  % 专业学位类型
\newcommand\@professionaltype{}
\newcommand\professionalfield[1]{\def\@professionalfield{#1}}  % 专业领域
\newcommand\@professionalfield{}
\newcommand\defenddate[1]{\def\@defenddate{#1}}  % 答辩日期
\newcommand\@defenddate{}
\newcommand\submitdate[1]{\def\@submitdate{#1}}  % 论文提交日期
\newcommand\@submitdate{}
\newcommand\degreecategory[1]{\def\@degreecategory{#1}}  % 申请学位类别
\newcommand\@degreecategory{}
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
  \ifdefstring{\CQJTU@degree}{bachelor}{
    % 本科论文封面
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
  }{
    % 研究生论文封面
    \begin{titlepage}
      \thispagestyle{empty}
      \begingroup
      
      % ============ 顶部元数据区（双列布局） ============
      \songti\zihao{-4}
      \noindent
      \begin{minipage}[t]{0.5\textwidth}
        \begin{tabular}{@{}r@{\hspace{0.3em}}l@{}}
          分类号： & \uline{\makebox[3.5cm][l]{\@clc}}\\[6pt]
          密\hspace{1em}级： & \uline{\makebox[3.5cm][l]{\@securitylevel}}
        \end{tabular}
      \end{minipage}%
      \begin{minipage}[t]{0.5\textwidth}
        \raggedleft
        \begin{tabular}{@{}r@{\hspace{0.3em}}l@{}}
          单位代码： & \uline{\makebox[3cm][c]{10618}}\\[6pt]
          \makebox[4em][s]{学号}： & \uline{\makebox[3cm][l]{\@studentid}}
        \end{tabular}
      \end{minipage}
      
      \vspace{30pt}
      
      \begin{center}
        % ============ 校徽和校名 ============
        \includegraphics[width=10cm]{figures/cqjtu-logo-blue.png}\\[25pt]
        
        % ============ 学位类型标识 ============
        {\zihao{1}\heiti\bfseries
          \ifdefstring{\CQJTU@degree}{doctor}{博\hspace{0.3em}士\hspace{0.3em}学\hspace{0.3em}位\hspace{0.3em}论\hspace{0.3em}文}{%
            \ifdefstring{\CQJTU@degreetype}{professional}{专\hspace{0.3em}业\hspace{0.3em}硕\hspace{0.3em}士\hspace{0.3em}学\hspace{0.3em}位\hspace{0.3em}论\hspace{0.3em}文}{硕\hspace{0.3em}士\hspace{0.3em}学\hspace{0.3em}位\hspace{0.3em}论\hspace{0.3em}文}%
          }%
        }\\[40pt]
        
        % ============ 论文题目 ============
        \vspace{10pt}
        {\zihao{1}\songti\bfseries \@ctitle}\\[50pt]
        
        % ============ 作者导师信息 ============
        \zihao{-3}\heiti
        \renewcommand{\arraystretch}{1.8}
        \begin{tabular}{r@{\hspace{0.5em}}l}
          \makebox[7em][s]{研究生姓名}： & \uline{\makebox[6cm][c]{\@author}} \\
          导师姓名及职称： & \uline{\makebox[6cm][c]{\@advisor}} \\
        \end{tabular}
        
        \vfill
        
        % ============ 底部信息表格 ============
        \zihao{-4}\heiti
        \renewcommand{\arraystretch}{1.5}
        \ifdefstring{\CQJTU@degreetype}{professional}{%
          % 专业学位表格
          \begin{tabular}{r@{\hspace{0.3em}}l@{\hspace{1.5cm}}r@{\hspace{0.3em}}l}
            申请专业学位类别： & \uline{\makebox[3cm][l]{\@degreecategory}} & 学位授予单位： & 重庆交通大学 \\
             &  & 论文提交日期： & \@submitdate \\
            专业领域名称： & \uline{\makebox[3cm][l]{\@professionalfield}} & 论文答辩日期： & \@defenddate \\
          \end{tabular}
        }{%
          % 学术学位表格
          \begin{tabular}{r@{\hspace{0.3em}}l@{\hspace{1.5cm}}r@{\hspace{0.3em}}l}
            申请学位类别： & \uline{\makebox[3cm][l]{\@degreecategory}} & 学位授予单位： & 重庆交通大学 \\
            一级学科名称： & \uline{\makebox[3cm][l]{\@discipline}} & 论文提交日期： & \@submitdate \\
            二级学科名称： & \uline{\makebox[3cm][l]{\@subdiscipline}} & 论文答辩日期： & \@defenddate \\
          \end{tabular}
        }%
        
        \vspace{30pt}
        
        % ============ 底部日期 ============
        {\zihao{-3}\songti \@completedate}
        
        \vspace{20pt}
      \end{center}
      \endgroup
    \end{titlepage}
  }
  \clearpage
}
\newcommand\makedeclaration{
  \cleardoublepage
  \thispagestyle{empty}
  
  \ifdefstring{\CQJTU@degree}{bachelor}{
    % ======== 本科论文原创性声明 ========
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
  }{
    % ======== 研究生论文原创性声明 ========
    \begin{center}
      {\zihao{3}\heiti 重庆交通大学学位论文原创性声明}
    \end{center}

    \vspace{15pt}

    {\zihao{-4}\songti\setstretch{1.5}
    \setlength{\parindent}{2em}
    本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。

    \vspace{20pt}

    \noindent\hfill 学位论文作者签名：\uline{\hspace{3cm}}\hspace{1cm}日期：\uline{\hspace{0.8cm}}年\uline{\hspace{0.6cm}}月\uline{\hspace{0.6cm}}日\hspace{1cm}
    }

    \vspace{40pt}

    % ======== 版权授权书 ========
    \begin{center}
      {\zihao{3}\heiti 重庆交通大学学位论文版权使用授权书}
    \end{center}

    \vspace{15pt}

    {\zihao{-4}\songti\setstretch{1.5}
    \setlength{\parindent}{2em}
    本学位论文作者完全了解学校有关保留、使用学位论文的规定，同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权重庆交通大学可以将本学位论文的全部内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。同时授权中国科学技术信息研究所将本学位论文收录到《中国学位论文全文数据库》，并进行信息服务（包括但不限于汇编、复制、发行、信息网络传播等），同时本人保留在其他媒体发表论文的权利。

    \vspace{20pt}

    \noindent
    \begin{minipage}[t]{0.48\textwidth}
      学位论文作者签名：\uline{\hspace{2.5cm}}

      \vspace{8pt}

      日\hspace{1em}期：\uline{\hspace{0.8cm}}年\uline{\hspace{0.6cm}}月\uline{\hspace{0.6cm}}日
    \end{minipage}%
    \hfill
    \begin{minipage}[t]{0.48\textwidth}
      \raggedleft
      指导教师签名：\uline{\hspace{2.5cm}}

      \vspace{8pt}

      日\hspace{1em}期：\uline{\hspace{0.8cm}}年\uline{\hspace{0.6cm}}月\uline{\hspace{0.6cm}}日
    \end{minipage}

    \vspace{25pt}

    % ======== CNKI授权（虚线分隔） ========
    \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}

    \vspace{15pt}

    \setlength{\parindent}{2em}
    本人同意将本学位论文提交至中国学术期刊（光盘版）电子杂志社CNKI系列数据库中全文发布，并按《中国优秀博硕士学位论文全文数据库出版章程》规定享受相关权益。

    \vspace{20pt}

    \noindent
    \begin{minipage}[t]{0.48\textwidth}
      学位论文作者签名：\uline{\hspace{2.5cm}}

      \vspace{8pt}

      日\hspace{1em}期：\uline{\hspace{0.8cm}}年\uline{\hspace{0.6cm}}月\uline{\hspace{0.6cm}}日
    \end{minipage}%
    \hfill
    \begin{minipage}[t]{0.48\textwidth}
      \raggedleft
      指导教师签名：\uline{\hspace{2.5cm}}

      \vspace{8pt}

      日\hspace{1em}期：\uline{\hspace{0.8cm}}年\uline{\hspace{0.6cm}}月\uline{\hspace{0.6cm}}日
    \end{minipage}
    }
  }

  \clearpage
}
\newenvironment{cabstract}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{摘要}
  \ifdefstring{\CQJTU@degree}{bachelor}{
    % 本科摘要格式
    \begin{center}
      {\zihao{-3}\heiti 摘\quad 要}
    \end{center}
    \vspace{12pt}
    \par\zihao{-4}\songti
    \setstretch{1.5}
  }{
    % 研究生摘要格式
    \begin{center}
      {\zihao{3}\heiti 摘\quad\quad 要}
    \end{center}
    \vspace{\baselineskip}
    \par\zihao{-4}\songti
    \setlength{\parindent}{2em}
    \linespread{1.0}
    \setlength{\baselineskip}{20pt}
    \selectfont
  }
}{\clearpage}

\newcommand\ckeywords[1]{
  \vspace{12pt}
  \ifdefstring{\CQJTU@degree}{bachelor}{
    \noindent{\zihao{-4}\heiti 关键词：}\zihao{-4}\songti #1
  }{
    \noindent{\zihao{-4}\heiti 关键词：}\zihao{-4}\songti #1
  }
}
\newenvironment{eabstract}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{Abstract}
  \ifdefstring{\CQJTU@degree}{bachelor}{
    % 本科英文摘要
    \begin{center}
      {\zihao{-3}\bfseries \@etitle}
      \vspace{12pt}
      {\zihao{-3}\bfseries Abstract}
    \end{center}
    \vspace{12pt}
    \par\zihao{-4}
    \setstretch{1.5}
  }{
    % 研究生英文摘要
    \begin{center}
      {\zihao{3}\heiti ABSTRACT}
    \end{center}
    \vspace{2\baselineskip}
    \par\zihao{-4}
    \setlength{\parindent}{2em}
    \linespread{1.0}
    \setlength{\baselineskip}{20pt}
    \selectfont
  }
}{\clearpage}

\newcommand\ekeywords[1]{
  \vspace{12pt}
  \ifdefstring{\CQJTU@degree}{bachelor}{
    \noindent{\zihao{-4}\bfseries Key Words: }\zihao{-4} #1
  }{
    \noindent{\zihao{-4}\bfseries KEY WORDS: }\zihao{-4} #1
  }
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
