###graphical genotypes for Figure5

require(ABHgenotypeR)+require(ggplot2)+require(grid)+require(gridExtra)

preImpPreErrGenos <- readABHgenotypes("c:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/fall2014/filt050/5_genotypes_parental.csv",
                                      nameA = "NB", nameB = "OL")
postImpPreErrGenos <- readABHgenotypes("c:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/fall2014/filt050/6_genotypes_imputed.csv",
                                       nameA = "NB", nameB = "OL")
postImpPostErrGenos <- readABHgenotypes("c:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/fall2014/filt050/8_genotypes_correctedDups.csv",
                                        nameA = "NB", nameB = "OL")


F2toPlot <- preImpPreErrGenos$individual_names[1:50]

p1 <- plotGenos(preImpPreErrGenos,
                individualsToPlot = F2toPlot,
                chromToPlot = 1:3)
p1 <- p1 + theme(legend.position = "none")
p2 <- plotGenos(postImpPreErrGenos,
                individualsToPlot = F2toPlot,
                chromToPlot = 1:3)
p2 <- p2 + theme(legend.position = "none")
p3 <- plotGenos(postImpPostErrGenos,
                individualsToPlot = F2toPlot,
                chromToPlot = 1:3)


g <- grid.arrange(p1,p2,p3, nrow = 3,
            heights = c(0.3,0.3,0.4))

ggsave("c:/Users/Stefan/Google Drive/Olo_GBS/manuscript/figures/Figure_5.svg", g,
       width = 170,
       height = 100,
       units = "mm",
       dpi = 300,
       scale = 1.8)




