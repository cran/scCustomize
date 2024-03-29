% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Seurat_Iterative_Plotting.R
\name{Iterate_Cluster_Highlight_Plot}
\alias{Iterate_Cluster_Highlight_Plot}
\title{Iterate Cluster Highlight Plot}
\usage{
Iterate_Cluster_Highlight_Plot(
  seurat_object,
  highlight_color = "dodgerblue",
  background_color = "lightgray",
  pt.size = NULL,
  reduction = NULL,
  file_path = NULL,
  file_name = NULL,
  file_type = NULL,
  single_pdf = FALSE,
  dpi = 600,
  raster = NULL,
  ...
)
}
\arguments{
\item{seurat_object}{Seurat object name.}

\item{highlight_color}{Color to highlight cells (default "navy").  Can provide either single color to use for
all clusters/plots or a vector of colors equal to the number of clusters to use (in order) for the clusters/plots.}

\item{background_color}{non-highlighted cell colors.}

\item{pt.size}{point size for both highlighted cluster and background.}

\item{reduction}{Dimensionality Reduction to use (if NULL then defaults to Object default).}

\item{file_path}{directory file path and/or file name prefix.  Defaults to current wd.}

\item{file_name}{name suffix to append after sample name.}

\item{file_type}{File type to save output as.  Must be one of following: ".pdf", ".png", ".tiff", ".jpeg", or ".svg".}

\item{single_pdf}{saves all plots to single PDF file (default = FALSE).  `file_type`` must be .pdf}

\item{dpi}{dpi for image saving.}

\item{raster}{Convert points to raster format.  Default is NULL which will rasterize by default if
greater than 200,000 cells.}

\item{...}{Extra parameters passed to\code{\link[Seurat]{DimPlot}}.}
}
\value{
Saved plots
}
\description{
Iterate the create plots with cluster of interest highlighted across all cluster (active.idents)
in given Seurat Object
}
\examples{
\dontrun{
Iterate_Cluster_Highlight_Plot(seurat_object = object, highlight_color = "navy",
background_color = "lightgray", file_path = "path/", file_name = "name", file_type = "pdf",
single_pdf = TRUE)
}

}
\concept{iterative_plotting}
