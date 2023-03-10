% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Seurat_Plotting.R
\name{Split_FeatureScatter}
\alias{Split_FeatureScatter}
\title{Split FeatureScatter}
\usage{
Split_FeatureScatter(
  seurat_object,
  feature1 = NULL,
  feature2 = NULL,
  split.by = NULL,
  group.by = NULL,
  colors_use = NULL,
  pt.size = NULL,
  title_size = 15,
  num_columns = NULL,
  raster = NULL,
  raster.dpi = c(512, 512),
  ggplot_default_colors = FALSE,
  color_seed = 123,
  ...
)
}
\arguments{
\item{seurat_object}{Seurat object name.}

\item{feature1}{First feature to plot.}

\item{feature2}{Second feature to plot.}

\item{split.by}{Feature to split plots by (i.e. "orig.ident").}

\item{group.by}{Name of one or more metadata columns to group (color) cells by (for example, orig.ident).
Use 'ident' to group.by active.ident class.}

\item{colors_use}{color for the points on plot.}

\item{pt.size}{Adjust point size for plotting.}

\item{title_size}{size for plot title labels.}

\item{num_columns}{number of columns in final layout plot.}

\item{raster}{Convert points to raster format.  Default is NULL which will rasterize by default if
greater than 100,000 cells.}

\item{raster.dpi}{Pixel resolution for rasterized plots, passed to geom_scattermore().
Default is c(512, 512).}

\item{ggplot_default_colors}{logical.  If \code{colors_use = NULL}, Whether or not to return plot using
default ggplot2 "hue" palette instead of default "polychrome" or "varibow" palettes.}

\item{color_seed}{random seed for the "varibow" palette shuffle if \code{colors_use = NULL} and number of
groups plotted is greater than 36.  Default = 123.}

\item{...}{Extra parameters passed to \code{\link[Seurat]{FeatureScatter}}.}
}
\value{
A ggplot object
}
\description{
Create FeatureScatter using split.by
}
\examples{
library(Seurat)
pbmc_small$sample_id <- sample(c("sample1", "sample2"), size = ncol(pbmc_small), replace = TRUE)

Split_FeatureScatter(seurat_object = pbmc_small, feature1 = "nCount_RNA", feature2 = "nFeature_RNA",
split.by = "sample_id")

}
\concept{seurat_plotting}
