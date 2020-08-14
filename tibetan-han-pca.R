
    library(reshape2)
    library(ggplot2)
    library(metaX)
    ###### metaX PCA QC#####
    ###### metaX PCA No QC#####
    para <- new("metaXpara")
    #pfile = 'test.txt'
    sfile <- 'group.txt'
    rawPeaks(para) <- read.delim('test.txt',check.names = FALSE)
    sampleListFile(para) <- sfile
    outdir(para) <- '.'
    prefix(para) <-'oral_han_tibetan'
    para <- reSetPeaksData(para)
    para <- missingValueImpute(para)
    para <- transformation(para,valueID = "value")
    metaX::plotPCA(para,valueID="value",scale="uv",center=TRUE,rmQC = FALSE)
    #####
    #source('/PUBLIC/software/PROT/pipeline/software/pipeline2.0/lib/corr_plot/corr_fpkm_plot_v3.r')
    #corr_plot("/ifs/TJPROJ3/PROT/PROJECT_MET/2020_1ST/X101SC19113283-Z01-J001-B1-20200114-taerdaishanyanghuichang-27-samples-Met/01.MetExprQuality/QC_samples_neg.xls","neg")
