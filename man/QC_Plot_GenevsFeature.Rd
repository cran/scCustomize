% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QC_Plotting_Seurat.R
\name{QC_Plot_GenevsFeature}
\alias{QC_Plot_GenevsFeature}
\title{QC Plots Genes vs Misc}
\usage{
QC_Plot_GenevsFeature(
  seurat_object,
  feature1,
  x_axis_label = NULL,
  y_axis_label = "Genes per Cell/Nucleus",
  low_cutoff_gene = NULL,
  high_cutoff_gene = NULL,
  low_cutoff_feature = NULL,
  high_cutoff_feature = NULL,
  colors_use = NULL,
  pt.size = 1,
  group.by = NULL,
  raster = NULL,
  raster.dpi = c(512, 512),
  ggplot_default_colors = FALSE,
  color_seed = 123,
  shuffle_seed = 1,
  ...
)
}
\arguments{
\item{seurat_object}{Seurat object name.}

\item{feature1}{First feature to plot.}

\item{x_axis_label}{Label for x axis.}

\item{y_axis_label}{Label for y axis.}

\item{low_cutoff_gene}{Plot line a potential low threshold for filtering genes per cell.}

\item{high_cutoff_gene}{Plot line a potential high threshold for filtering genes per cell.}

\item{low_cutoff_feature}{Plot line a potential low threshold for filtering feature1 per cell.}

\item{high_cutoff_feature}{Plot line a potential high threshold for filtering feature1 per cell.}

\item{colors_use}{vector of colors to use for plotting by identity.}

\item{pt.size}{Adjust point size for plotting.}

\item{group.by}{Name of one or more metadata columns to group (color) cells by (for example, orig.ident).
Default is \verb{@active.ident}.}

\item{raster}{Convert points to raster format.  Default is NULL which will rasterize by default if greater
than 100,000 cells.}

\item{raster.dpi}{Pixel resolution for rasterized plots, passed to geom_scattermore().
Default is c(512, 512).}

\item{ggplot_default_colors}{logical.  If \code{colors_use = NULL}, Whether or not to return plot using default
ggplot2 "hue" palette instead of default "polychrome" or "varibow" palettes.}

\item{color_seed}{random seed for the "varibow" palette shuffle if \code{colors_use = NULL} and number of
groups plotted is greater than 36.  Default = 123.}

\item{shuffle_seed}{Sets the seed if randomly shuffling the order of points (Default is 1).}

\item{...}{Extra parameters passed to \code{\link[Seurat]{FeatureScatter}}.}
}
\value{
A ggplot object
}
\description{
Custom FeatureScatter for initial QC checks including lines for thresholding
}
\examples{
\dontrun{
QC_Plot_GenevsFeature(seurat_object = obj, y_axis_label = "Feature per Cell")
}

}
\concept{object_qc_plotting}
