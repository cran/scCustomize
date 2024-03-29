% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Seurat_Plotting.R
\name{VlnPlot_scCustom}
\alias{VlnPlot_scCustom}
\title{VlnPlot with modified default settings}
\usage{
VlnPlot_scCustom(
  seurat_object,
  features,
  colors_use = NULL,
  pt.size = NULL,
  group.by = NULL,
  split.by = NULL,
  plot_median = FALSE,
  plot_boxplot = FALSE,
  median_size = 15,
  idents = NULL,
  num_columns = NULL,
  raster = NULL,
  add.noise = TRUE,
  ggplot_default_colors = FALSE,
  color_seed = 123,
  ...
)
}
\arguments{
\item{seurat_object}{Seurat object name.}

\item{features}{Feature(s) to plot.}

\item{colors_use}{color palette to use for plotting.  By default if number of levels plotted is less than
or equal to 36 it will use "polychrome" and if greater than 36 will use "varibow" with shuffle = TRUE
both from \code{DiscretePalette_scCustomize}.}

\item{pt.size}{Adjust point size for plotting.}

\item{group.by}{Name of one or more metadata columns to group (color) cells by (for example, orig.ident);
default is the current active.ident of the object.}

\item{split.by}{Feature to split plots by (i.e. "orig.ident").}

\item{plot_median}{logical, whether to plot median for each ident on the plot (Default is FALSE).}

\item{plot_boxplot}{logical, whether to plot boxplot inside of violin (Default is FALSE).}

\item{median_size}{Shape size for the median is plotted.}

\item{idents}{Which classes to include in the plot (default is all).}

\item{num_columns}{Number of columns in plot layout.  Only valid if \code{split.by != NULL}.}

\item{raster}{Convert points to raster format.  Default is NULL which will rasterize by default if
greater than 100,000 total points plotted (# Cells x # of features).}

\item{add.noise}{logical, determine if adding a small noise for plotting (Default is TRUE).}

\item{ggplot_default_colors}{logical.  If \code{colors_use = NULL}, Whether or not to return plot using
default ggplot2 "hue" palette instead of default "polychrome" or "varibow" palettes.}

\item{color_seed}{random seed for the "varibow" palette shuffle if \code{colors_use = NULL} and number of
groups plotted is greater than 36.  Default = 123.}

\item{...}{Extra parameters passed to \code{\link[Seurat]{VlnPlot}}.}
}
\value{
A ggplot object
}
\description{
Creates DimPlot with some of the settings modified from their Seurat defaults (colors_use, shuffle, label).
}
\examples{
library(Seurat)
VlnPlot_scCustom(seurat_object = pbmc_small, features = "CD3E")

}
\references{
Many of the param names and descriptions are from Seurat to facilitate ease of use as
this is simply a wrapper to alter some of the default parameters \url{https://github.com/satijalab/seurat/blob/master/R/visualization.R} (License: GPL-3).
}
\concept{seurat_plotting}
