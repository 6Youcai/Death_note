library(stringr)
library(magrittr)

cell <- function(x, header = FALSE) {
  # trim blank
  x <- str_replace(x, "^\\s+", "") %>%
    str_replace(., "\\s+$", "")
  if(x == "") return("")
  # use $>2 for colspan, $v for rowspan
  if(str_detect(x, "\\$v\\d+;")) {
    rowspan <- str_match(x, "\\$v(\\d+);")[2] %>% 
      paste0(' rowspan="', ., '"')
    x <- str_replace(x, "\\$v\\d+;", "")
  } else
    rowspan <- ""
  
  if(str_detect(x, "\\$>\\d+;")) {
    colspan <- str_match(x, "\\$>(\\d+);")[2] %>%
      paste0(' colspan="', ., '"')
    x <- str_replace(x, "\\$>\\d+;", "")
  } else 
    colspan <- ""
  # header or not 
  tag <- ifelse(header, "th", "td")
  paste0("<", tag, rowspan, colspan, ">") %>%
    paste0(., x, "</", tag, ">")
}

line <- function(text, isheader = FALSE) {
  h_tag <- ifelse(isheader, " class=\"header\"", "")
  str_split(text, "\\|")[[1]] %>%
    sapply(., cell, header = isheader) %>%
    paste0(., collapse = "\n") %>%
    paste0("<tr", h_tag, ">\n", ., "\n</tr>") %>% 
    str_replace_all(., "\n+", "\n")
}

html_table <- function(raw_text) {
  text_arr <- str_replace(raw_text, "^\\n", "") %>% 
    str_replace(., "\\n$", "") %>%
    str_split(., "\\n")
  text_arr <- text_arr[[1]]
  have_hear <- str_detect(text_arr[2], "\\-+\\s*\\|\\s*\\-+")
  
  if(have_hear) {
    t_header <- line(text_arr[1], TRUE)
    t_body <- sapply(text_arr[3: length(text_arr)], line) %>% 
      paste0(., collapse = "\n")
    paste0("<table><thead>",
          t_header, "</thead>", 
          "<tbody>", t_body, 
          "</tbody></table>") %>% cat
  } else {
    t_body <- sapply(text_arr[1:length(text_arr)], line) %>% 
      paste0(., collapse = "\n")
    paste0("<table><tbody>", t_body, "</tbody></table>") %>% cat
  }
}

# # test 1
# ```{r, echo=FALSE, results='asis'}
# raw_text <- "
# 类别|    名称|   说明
# ----|------|-------
# $v2;比对|    BWA |广泛接受的基因组比对软件
# STAR/Tophat/HISAT   |转录组比对软件
# $v2;变异检测|    GATK|   TCGA标准工具
# freebayes|  基于单体型的检测工具
# $v3;体细胞变异检测|  Mutect  |公认效果较好的检测工具
# Strelka|    ICGC-DREAM评测优胜工具
# Varscan|    自主研发过滤程序，已用于文章发表
# 显著差异基因分析|    MutSigCV    |.
# 肿瘤纯度分析|    ASCAT   |.
# 表达分析|    cufflinks | 传统表达分析工具
# 差异表达计算|    Deseq/edgeR |各有所长，根据实际项目选择
# "
# 
# html_table(raw_text)
# ```
# 
# # test 2
# ```{r, echo=FALSE, results='asis'}
# raw_text <- "
# $1: |Input file| 通常为输入文件
# $2: |Output path| 通常为输出路径
# $3: |Sample name| 通常为样品名
# $4: |Params | 通常为程序参数
# $5: |Info | 其他信息
# "
# 
# html_table(raw_text)
```
