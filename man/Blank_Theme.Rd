% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Plotting_Utilities.R
\name{Blank_Theme}
\alias{Blank_Theme}
\title{Blank Theme}
\usage{
Blank_Theme(...)
}
\arguments{
\item{...}{extra arguments passed to \code{ggplot2::theme()}.}
}
\value{
Returns a list-like object of class \emph{theme}.
}
\description{
Shortcut for thematic modification to remove all axis labels and grid lines
}
\examples{
# Generate a plot and customize theme
library(ggplot2)
df <- data.frame(x = rnorm(n = 100, mean = 20, sd = 2), y = rbinom(n = 100, size = 100, prob = 0.2))
p <- ggplot(data = df, mapping = aes(x = x, y = y)) + geom_point(mapping = aes(color = 'red'))
p + Blank_Theme()

}
\concept{themes}
