% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QC_Plotting_Seurat.R
\name{QC_Plots_Combined_Vln}
\alias{QC_Plots_Combined_Vln}
\title{QC Plots Genes, UMIs, & \% Mito}
\usage{
QC_Plots_Combined_Vln(
  seurat_object,
  group.by = NULL,
  feature_cutoffs = NULL,
  UMI_cutoffs = NULL,
  mito_cutoffs = NULL,
  mito_name = "percent_mito",
  pt.size = NULL,
  plot_median = FALSE,
  median_size = 15,
  plot_boxplot = FALSE,
  colors_use = NULL,
  x_lab_rotate = TRUE,
  y_axis_log = FALSE,
  raster = NULL,
  ggplot_default_colors = FALSE,
  color_seed = 123,
  ...
)
}
\arguments{
\item{seurat_object}{Seurat object name.}

\item{group.by}{Name of one or more metadata columns to group (color) cells by (for example, orig.ident);
default is the current active.ident of the object.}

\item{feature_cutoffs}{Numeric vector of length 1 or 2 to plot lines for  potential low/high threshold for filtering.}

\item{UMI_cutoffs}{Numeric vector of length 1 or 2 to plot lines for  potential low/high threshold for filtering.}

\item{mito_cutoffs}{Numeric vector of length 1 or 2 to plot lines for  potential low/high threshold for filtering.}

\item{mito_name}{The column name containing percent mitochondrial counts information.  Default value is
"percent_mito" which is default value created when using \code{Add_Mito_Ribo_Seurat()}.}

\item{pt.size}{Point size for plotting}

\item{plot_median}{logical, whether to plot median for each ident on the plot (Default is FALSE).}

\item{median_size}{Shape size for the median is plotted.}

\item{plot_boxplot}{logical, whether to plot boxplot inside of violin (Default is FALSE).}

\item{colors_use}{vector of colors to use for plot.}

\item{x_lab_rotate}{Rotate x-axis labels 45 degrees (Default is TRUE).}

\item{y_axis_log}{logical. Whether to change y axis to log10 scale (Default is FALSE).}

\item{raster}{Convert points to raster format.  Default is NULL which will rasterize by default if
greater than 100,000 total points plotted (# Cells x # of features).}

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
Custom VlnPlot for initial QC checks including lines for thresholding
}
\examples{
\dontrun{
QC_Plots_Combined_Vln(seurat_object = object)
}

}
\concept{object_qc_plotting}
