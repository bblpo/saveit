#' a function for saving output in a file of your working directory
#'
#' two parameters need to be entered
#'@param  x is a result you would like to save,e.g.,summary(yourRegressionResult)
#' @param  y is the name of file you want to create (e.g.,'mydiagnosis.txt')
#' Note that the file will be saved at the working directory
#' @export

saveit<-function(x,y){
  cat("The analysis shows ","\n","\n","\n",file=y,append=TRUE)
  out<-capture.output(x)
  cat(out,file=y,sep="\n",append=TRUE)
  cat("  ","\n","\n","\n",file=y,append=TRUE)
}
