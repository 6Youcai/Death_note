## command
    latex example.tex    
    .tex # in
    .aux
    .dvi
    .log
    .nav
    .out
    .snm
    .toc

    xdvi example.dvi #
    dvipdf example.dvi # generate pdf

#
## 文档布局
    \documentclass[options]{class}
    \documentclass[11pt,twoside,a4paper]{article} # example
## 宏包
    \usepackage[options]{package}
##  页面样式，页眉页脚
    \pagestyle{style}
    \thispagestyle{style}
## 分割
    \include{filename}
    \includeonly{filename,filename}
    \input{filename}
## 检查
    \usepackage{syntonly}
    \syntaxonly

# 文本排版
## 断行和分页
    \\, \newline
    \\* # 强制断行，禁止分页
    \newpage # 另起一页
    \linebreak[n], \nolinebreak[n], \pagebreak[n], \nopagebreak[n]
## 断词
    \hyphenation{word list}
    \mbox{text} # 保证在同一行
    \fbox{text} # 画一个框
## 内置字符串
    \today
    \TeX
    \LaTeX
    \LateXe
## 特殊字符
- 引号
- 破折号、连字号
- 波浪号
- 度的符号
- 欧元符号
- 省略号
    \ldots
- 连字
- 注音符号和特殊字符

## 国际语言支持

## 单词间隔

## 标题、章节
    \section{...}
    \subsection{...}
    \subsubsection{...}
    \paragraph{...}
    \subpragrapg{...}

## 交叉引用

## 脚注
    \footnote{footnote text}

## 强调
    \underline{text}
    \emph{text} # 斜体

# 环境
## 一般形式
    \begin{environment}
        text
    \end{environment}
## 列表
    itemize
    enumerate
    description

    \begin{itemize} # example
    some text
    \end{itemize}

## 对齐
    flushleft, flushright, center #  环境

    \begin{flushleft} # example
        text
    \end{flushleft}

## 引用
    quote # 引用
    quotation # 较长引用
    verse # 诗歌

## 摘要
    abstract # environment

## 原文打印
    verbatim # 不执行任何命令，包括断行和空白

## 表格
    \begin{tabular}[pos]{table spec}
        ...
    \end{tabular}

    table spec:
        - l:左对齐的列
        - r:右对齐的列
        - c:居中对齐列
        - p{width}:相应宽度、包含自动断行的列
        - |:垂直线表格列分隔符
        - @{...}:自定义表格列分隔符
    pos:
        - t:
        - b:
        - c:

    &:下一列
    \\:新的一行
    \hline：插入水平线
    \cline{j-i}：添加部分表线

## 保护脆弱命令
    \protect

# 数学公式

# 专业功能
## 插入图片
    \usepackage[driver]{graphicx}
    \includegraphics[key=value, ...]{file}

## 参考文献
    \cite{marker} %
    \begin{thebibliography}{99}
    \bibitem{marker} %
    \end{thebibliography}

## 索引
    \usepackage{makeidx}
    \makeindex
    \index{key}

## 定制页眉和页脚

## 安装额外的宏包
    CTAN
## pdflatex

## 字体

## 超链接

# 数学图形

# 定制Latex

## zhihu
- 用 LaTeX 排版中文，请先学会使用 xeCJK 宏包。
- 这里要用的就是BibTeX，它可以把你编写好的参考文献文件自动插入tex文件中，形成专业的参考文献格式！


## 七种层次结构命令 
    \part {...}
    \chapter {...}
    \section {...}
    \subsection {...}
    \subsubsection {...}
    \paragraph {...}
    \subparagraph {...}
