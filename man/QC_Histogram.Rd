% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QC_Plotting_Seurat.R
\name{QC_Histogram}
\alias{QC_Histogram}
\title{QC Histogram Plots}
\usage{
QC_Histogram(
  seurat_object,
  features,
  low_cutoff = NULL,
  high_cutoff = NULL,
  split.by = NULL,
  bins = 250,
  colors_use = "dodgerblue",
  num_columns = NULL,
  plot_title = NULL,
  assay = NULL,
  print_defaults = FALSE
)
}
\arguments{
\item{seurat_object}{Seurat object name.}

\item{features}{Feature from meta.data, assay features, or feature name shortcut to plot.}

\item{low_cutoff}{Plot line a potential low threshold for filtering.}

\item{high_cutoff}{Plot line a potential high threshold for filtering.}

\item{split.by}{Feature to split plots by (i.e. "orig.ident").}

\item{bins}{number of bins to plot default is 250.}

\item{colors_use}{color to fill histogram bars, default is "dodgerblue".}

\item{num_columns}{Number of columns in plot layout.}

\item{plot_title}{optional, vector to use for plot title.  Default is the name of the
variable being plotted.}

\item{assay}{assay to pull features from, default is active assay.}

\item{print_defaults}{return list of accepted default shortcuts to provide to \code{features} instead
of full name.}
}
\value{
A patchwork object
}
\description{
Custom histogram for initial QC checks including lines for thresholding
}
\examples{
\dontrun{
QC_Histogram(seurat_object = object, features = "nFeature_RNA")
}

}
\concept{object_qc_plotting}
