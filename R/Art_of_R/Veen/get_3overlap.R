library(dplyr)
library(stringr)
library (VennDiagram)
library(gridExtra)

# read 
CIRI <- function(sample_name) {
  file <- paste0("/mnt/cfs/prj16a/T769000/analysis_circRNA/result/",
                 sample_name, "/", sample_name, ".output.ciri")
  # there "#" in the header
  dat <- read.table(file, sep = '\t', header = TRUE, 
                    comment.char = "!")
  colnames(dat)[2:4] <- c("chrom", "start", "end")
  # correct coordinates
  dat$start <- dat$start - 1
  return(dat)
}

CIRIexplorer2 <- function(sample_name) {
  file <- paste0("/mnt/cfs/prj16a/T769000/Arrange/circRNA/CIRIexplorer2/",
                 sample_name, "/circ_out/annotate/circ_fusion.txt")
  dat <- read.table(file, sep = '\t', header = FALSE)
  colnames(dat)[1:3] <- c("chrom", "start", "end")
  # header text
  # c("chrom", "start", "end", "name", "score", "strand", 
  # "thickStart", "thickEnd", "itemRgb", "exonCount", 
  # "exonSizes", "exonOffsets", "readNumber", "circType", 
  # "geneName", "isoformName", "index", "flankIntron")
  return(dat)
}

split_chrom <- function(chromm) {
  arr <- str_split(chromm, "~")[[1]]
  if(arr[1] == arr[2])
    return(arr[1])
  return("Wrong")
}

MapSplice <- function(sample_name) {
  file <- paste0("/mnt/cfs/prj16a/T769000/Arrange/circRNA/align_MapSplice/Result/",
                 sample_name, "/Mapsplice_output/circular_RNAs.txt")
  dat <- read.table(file, sep = '\t', header = FALSE)
  colnames(dat)[c(1:3, 59)] <- c("chromm", "doner_end", "acceptor_start", "fusion_type")
  
  # https://stackoverflow.com/questions/26935150/use-of-ddply-mutate-with-a-custom-function
  dat <- dplyr::mutate(dat, start = pmin(doner_end, acceptor_start))
  dat <- dplyr::mutate(dat, end = pmax(doner_end, acceptor_start))
  
  dat <- dplyr::filter(dat, fusion_type == "normal")
  dat <- dplyr::mutate(dat, chrom = split_chrom(chromm))
  # dat <- dplyr::select(dat, -chromm)
  dat <- dplyr::filter(dat, chrom != "Wrong")
  
  # correct coordinates
  dat$start <- dat$start - 1
  return(dat)
}

over_one_sample <- function(sample_name) {
  dat <- list()
  dat[[1]] <- CIRI(sample_name)           # 1
  dat[[2]] <- CIRIexplorer2(sample_name)  # 2
  dat[[3]] <- MapSplice(sample_name)      # 3
  
  m12 <- merge(dat[[1]], dat[[2]], by = c("chrom", "start", "end"))
  m13 <- merge(dat[[1]], dat[[3]], by = c("chrom", "start", "end"))
  m23 <- merge(dat[[2]], dat[[3]], by = c("chrom", "start", "end"))
  
  m123 <- merge(m12, dat[[3]], by = c("chrom", "start", "end"))

  vennnames <- c(paste0("CIRI", "\n(n=", nrow(dat[[1]]), ")", sep=""),
                 paste0("CIRIexplorer2", "\n(n=", nrow(dat[[2]]), ")", sep=""),
                 paste0("MapSplice", "\n(n=", nrow(dat[[3]]), ")", sep=""))

  venn <- draw.triple.venn(area1 = nrow(dat[[1]]),
                           area2 = nrow(dat[[2]]),
                           area3 = nrow(dat[[3]]),
                           n12 = nrow(m12),
                           n23 = nrow(m23),
                           n13 = nrow(m13),
                           n123 = nrow(m123),
                           category = vennnames,
                           lwd = c(1,1,1), margin = 0.04, 
                           cat.pos = c(-20, 20, 180), cat.dist = c(0.1, 0.1, 0.1),
                           fill = c("#F8766D", "#00BA38", "#619CFF"),
                           cat.col = c("#F8766D", "#00BA38", "#619CFF"),
                           col = c("white", "white", "white"))
  grid.arrange(gTree(children=venn),
               bottom= sample_name)
  
}

over_one_sample('LUAD_G1_02N')

# all_samples <- read.table('/mnt/cfs/prj16a/T769000/analysis_1.1/in_json/sample.txt', sep = '\t')[, 1]
# par(mfrow=c(3,2))
# for(i in all_samples)
#   over_one_sample(i)
