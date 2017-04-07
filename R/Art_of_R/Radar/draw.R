library(fmsb)

dat <- read.table("data.txt", sep = '\t', header = TRUE)
dat <- t(dat[, c(2:3)])
colnames(dat) <- paste0(rep("Seg", 8), 1:8)
maxmin <- t(data.frame("max" = rep(31,8),
                       "min" = rep(0,8)))
dat <- rbind(maxmin,dat)
dat <- as.data.frame(dat)

colour <- c(rgb(176,224,230, 70, maxColorValue=255),
            rgb(255,99,71, 50, maxColorValue=255))

radarchart(dat,
           axistype = 2,
           seg = 7,
           pty = 19,
           plty = 1,
           pfcol = colour,
           plwd = 2,
           pcol = c(1:2))

legend("topright",
       legend=c("Total","宿主转化"),
       lty = c(1,1),
       col = colour,
       lwd=2,
       inset=c(0.05,0),
       cex=0.85)