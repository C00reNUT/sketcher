% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{survey}
\alias{survey}
\title{Create multiple sketches at once and combine them into a single image}
\usage{
survey(
  im,
  style = 1,
  weight_levels = c(1, 2, 4),
  smooth_levels = c(1, 2, 4),
  gain = 0.02,
  contrast = NULL,
  shadow = 0,
  verbose = TRUE
)
}
\arguments{
\item{im}{an image.}

\item{style}{numeric (integer). Either 1 (edge-focused) or 2 (smooth gradient)}

\item{weight_levels}{numeric (integer). a vector of lineweight values}

\item{smooth_levels}{numeric (integer). a vector of smooth values}

\item{gain}{a numeric between 0 and 1. Can be used to reduce noise in dim regions.}

\item{contrast}{numeric (integer). Adjusts the image contrast.}

\item{shadow}{a numeric between 0 and 1}

\item{verbose}{If TRUE (default), progress information is displayed in the Console.}
}
\value{
an array of the sketched image.
}
\description{
It is often necessary to find optimal sketch style parameters for your task.
With this function, you can easily compare the effects of different style parameters.
}
\examples{
\donttest{
im = survey(face, style = 1, weight_levels = c(1, 3), smooth_levels = c(1, 3), shadow = 0.3)
plot(im)
}
}
