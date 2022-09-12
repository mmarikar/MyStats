#' Mo Marikar
#' Create boxplot, histogram, std dev, range and numeric summary
#' @export
#' @param x numeric variable
MyStats <- function(x) {
  # 1 row and 2 columns
  par(mfrow = c(1,2))
  #histogram
  hist(x, col = rainbow(30))
  #boxplot
  boxplot(x, col = 'green')
  par(mfrow = c(1,1))
  #numeric summary
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x),
             sd = sd(x),
             range = max(x) - min(x)
  )
}
