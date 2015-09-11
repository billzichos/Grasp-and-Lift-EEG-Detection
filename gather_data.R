wd <- "~/GitHub/Grasp-and-Lift-EEG-Detection"

setwd(wd)

# The following files are provided
#   - test.zip
#   - train.zip
#   - sample_submission.csv.zip

source("~/GitHub/Get-Raw-Data/download.R")
downloadMultKaggleZip("grasp-and-lift-eeg-detection","test.zip")
downloadSingleKaggleZip("grasp-and-lift-eeg-detection","sample_submission.csv.zip","sample_submission.csv")
downloadMultKaggleZip("grasp-and-lift-eeg-detection","train.zip")

datalist <- list(
        train=read.csv(
                paste(wd,"\\",trnFile, sep=""), header=TRUE, as.is=TRUE), 
        test=read.csv(
                paste(wd,"\\",tstFile, sep=""), header=TRUE, as.is=TRUE)
        )