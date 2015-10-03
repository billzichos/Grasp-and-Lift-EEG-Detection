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