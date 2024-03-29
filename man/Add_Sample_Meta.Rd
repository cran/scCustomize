% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Object_Utilities.R
\name{Add_Sample_Meta}
\alias{Add_Sample_Meta}
\title{Add Sample Level Meta Data}
\usage{
Add_Sample_Meta(
  seurat_object,
  meta_data,
  join_by_seurat,
  join_by_meta,
  na_ok = FALSE,
  overwrite = FALSE
)
}
\arguments{
\item{seurat_object}{object name.}

\item{meta_data}{data.frame/tibble containing meta data or path to file to read.  Must be formatted as
either data.frame or tibble.}

\item{join_by_seurat}{name of the column in \code{seurat_object@meta.data} that contains matching
variables to \code{join_by_meta} in \code{meta_data.}}

\item{join_by_meta}{name of the column in \code{meta_data} that contains matching
variables to \code{join_by_seurat} in \code{seurat_object@meta.data}.}

\item{na_ok}{logical, is it ok to add NA values to \code{seurat_object@meta.data}.  Default is FALSE.
Be very careful if setting TRUE because if there is error in join operation it may result in all
\verb{@meta.data} values being replaced with NA.}

\item{overwrite}{logical, if there are shared columns between \code{seurat_object@meta.data} and \code{meta_data}
should the current \code{seurat_object@meta.data} columns be overwritten.  Default is FALSE.  This parameter
excludes values provided to \code{join_by_seurat} and \code{join_by_meta}.}
}
\value{
Seurat object with new \verb{@meta.data} columns
}
\description{
Add meta data from ample level data.frame/tibble to cell level seurat \verb{@meta.data} slot
}
\examples{
\dontrun{
# meta_data present in environment
sample_level_meta <- data.frame(...)
obj <- Add_Sample_Meta(seurat_object = obj, meta_data = sample_level_meta,
join_by_seurat = "orig.ident", join_by_meta = "sample_ID")

# from meta data file
obj <- Add_Sample_Meta(seurat_object = obj, meta_data = "meta_data/sample_level_meta.csv",
join_by_seurat = "orig.ident", join_by_meta = "sample_ID")
}

}
\concept{get_set_util}
