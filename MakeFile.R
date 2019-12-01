library(knitr)
library(brocks)

#just filename not path
filename <- commandArgs(trailingOnly = TRUE)
setwd("/Users/vatchebaboyan/Dropbox/Blog/vbaboyan.github.io")
opts_chunk$set(comment= NA, fig.path='/images/')
output<- paste0(getwd(),"/_posts/",Sys.Date(),"-", sub('.Rmd', '.html', filename))

# Check that the input is an .Rmd file ----
if(!grepl(".Rmd", filename)) {	
  stop("You must specify a .Rmd file.")
}

knit(input= paste0("_drafts/",filename),
     output=output,
     encoding= 'UTF-8')

# Create the dependencies ----
htmlwidgets_deps(a= paste0(Sys.Date(), "-", filename), 
                 always = T)

# Copy .png files to the images directory ----
fromdir = "/images"
pics <- list.files(fromdir, ".png")
pics <- sapply(pics, function(x) paste(fromdir, x, sep="/"))
file.copy(pics, todir, overwrite = T)