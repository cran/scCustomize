# scCustomize 1.1.0 (2022-12-22)  
## Added  
- Added `merge` parameter to `Read10X_GEO`, `Read10X_h5_GEO`, `Read_GEO_Delim` and `Read_CellBender_h5_Multi_File`.  
- Added `raster.dpi` parameter to `DimPlot_LIGER`.  
- Added `label` parameter to `FeaturePlot_scCustom` to avoid error collision ([#80](https://github.com/samuel-marsh/scCustomize/issues/80)).  
- Added `vln_linewidth` parameter to control violin outline line width ([#32](https://github.com/samuel-marsh/scCustomize/issues/32)).  
- Added quick meta data getter function `Fetch_Meta` for returning data.frame of object meta data.  
- Added `Extract_Sample_Meta` to extract sample-level meta data from object.  
- Added `Cell_Highlight_Plot` for highlight plots of custom cells not in active ident or meta data.  
- Added `flip` parameter to `Clustered_DotPlot` to enable axes flipping ([#69](https://github.com/samuel-marsh/scCustomize/issues/69)).  

## Changed  
- Updated Imports/Suggests for CRAN compatibility.  
- Under the hood code updates for CRAN compatibility.  
- Rearrange base R code within `R/` scripts for better organization.  

## Fixes  
- Fixed missing documentation for number of package functions.  
- Typo/styling fixes.  

 
# scCustomize 1.0.2 (2022-11-22)  
## Added  
- None. 

## Changed  
- Updated required Seurat version (v4.3.0) to avoid bug in `FindMarkers`.  

## Fixes  
- None.  

 
# scCustomize 1.0.1 (2022-11-10)  
## Added  
- Added `CellBender_Feature_Diff` to return data.frame with count sums and differences between raw and CellBender assays.  
- Added `CellBender_Diff_Plot` to plot differences between raw and CellBender assays using data from `CellBender_Feature_Diff`.  

## Changed  
- **BREAKING CHANGE** Function name changed, `Add_CellBender_Diff` is new name for `Add_Cell_Bender_Diff` in order to unify function names for CellBender related functions.  
- Updated CellBender vignette with new functions.

## Fixes  
- Fixed for automatic color palette selection when only plotting one group.

 
# scCustomize 1.0.0 (2022-10-25)  
## Added
- Added `mito_name` parameter to `QC_Plots_Mito` to allow for custom specification of meta data column name that contains mitochondrial information.
- Added `QC_Plots_Combined_Vln()` function to return patchwork layout of 3 QC plots.
- Added Rhesus Macaque (macaca mulatta) to the accepted species list for `Add_Mito_Ribo_Seurat()` and `Add_Mito_Ribo_LIGER()` ([#28](https://github.com/samuel-marsh/scCustomize/issues/28)).
- Added `alpha_exp` and `alpha_na_exp` parameters to `FeaturePlot_scCustom` to allow for control of color scale transparency ([#21](https://github.com/samuel-marsh/scCustomize/issues/21)).
- `*_Highlight_Plot` functions can now plot multiple variables simultaneously using either one color for all variables or one color per variable ([#34](https://github.com/samuel-marsh/scCustomize/issues/34)).
- Added parameter `figure_plot` to `DimPlot_scCustom()`.  This removes axes and axes labels and adds axis legend on left bottom corner of plot ([#40](https://github.com/samuel-marsh/scCustomize/issues/40)).
- Added parameter `plot_legend` to `Stacked_VlnPlot`.  This solves issue with returning only one shared legend across all features being plotted ([#48](https://github.com/samuel-marsh/scCustomize/issues/48)).
- Added `Add_Cell_Complexity_Seurat` and `Add_Cell_Complexity_LIGER` functions to add cell QC complexity/novelty metric (log10(Genes) / log10(UMIs)).  
- Added `QC_Plots_Complexity` plot for quick plotting of cell complexity score.
- Added 3 new CellBender functions `Read_CellBender_h5_Mat`, `Read_CellBender_h5_Multi_Directory`, `Read_CellBender_h5_Multi_File` to enable easy reading of new CellBender output files.
- Added `raster.dpi` parameter from Seurat to all `DimPlot` `FeaturePlot` or `FeatureScatter` based functions.  
- Added `add.noise` parameter from Seurat to `VlnPlot_scCustom` `Stacked_VlnPlot` functions.  
- Added `group.by` as default listed parameter to added to all`VlnPlot` based `QC_Plot_*`.  
- Added `ensembl_ids` parameter for `Add_Mito_Ribo_*` functions.  If `ensembl_ids = TRUE` functions will retrieve stored ensembl IDs representing mitochondrial and ribosomal genes for accepted default species.  
- Added parameter `label_feature_yaxis` to `FeaturePlot_scCustom`.  Allows for plotting of feature names on secondary y-axis when using `split.by` ([#60](https://github.com/samuel-marsh/scCustomize/issues/60)).  
- Added `Add_Sample_Meta` function for addition of sample-level meta data to cell-level `@meta.data` slot of Seurat objects.  
- Added a matrix check in `Read_GEO_Delim` to check for issues with imported matrices.  Check is modified version of `SeuratObject::CheckMatrix` called `CheckMatrix_scCustom()`.  Will warn if infinite, logical, non-integer (whole), or NA/NaN values are detected in input matrix.  
- `QC_Plot_UMIvsGene` will now returned filtered correlation value that takes into account `meta_gradient_name` if provided in addition to nFeature_RNA and nCount_RNA.
- Added new function `Variable_Features_ALL_LIGER` which allows for detection/selection of variable genes from entire LIGER object instead of iterating by dataset.
- Vignettes/Website updated with new function examples.  

## Changed
- **DEPENDENCY CHANGE** The required version of Seurat has been changed due to errors caused by updates to Matrix package and handling of sparse matrices.  To avoid errors version requirement for Seurat has been updated to 4.2.0. 
- **DEPENDENCY CHANGE** The dittoSeq package has been moved to Suggests to aid package installation. To catch errors a `PackageCheck` warning has been added where needed.  
- **BREAKING CHANGE** Function name for iterative `VlnPlot` has been changed to `Iterate_VlnPlot_scCustom` to reflect that it now uses `VlnPlot_scCustom` to generate plots. 
- `QC_Plot_*` functions now use `VlnPlot_scCustom` internally to unify color scheme and rasterization parameters.
- `*_Highlight_Plot` functions no longer display "Unselected" in plot legend and uses `DimPlot_scCustom` to generate plots ([#34](https://github.com/samuel-marsh/scCustomize/issues/34)).
- Updated Marsh et al., 2022 citation in vignettes.
- Have begun to move information, warning, and error messages to rlang/cli framework for clarity and style.

## Fixes
- Fixed DESCRIPTION file to specify colorway version upon installation ([#25](https://github.com/samuel-marsh/scCustomize/pull/25)).
- Fixed bug preventing `low_cutoff` from plotting via `QC_Plots_Mito`.
- Fixed bug in `Clustered_DotPlot` that prevented setting identity colors ([#29](https://github.com/samuel-marsh/scCustomize/issues/29)).
- Fixed bug in `FeaturePlot_scCustom` that returned NULL when setting `combine = FALSE` ([#31](https://github.com/samuel-marsh/scCustomize/issues/31)).
- Fixed bug in `Seq_QC_Plot_*` functions which resulted in groups being plotted out of order when specifying `plot_by` parameter.
- Fixed bug in `Seq_QC_Plot_*` functions that created color palette error when color palettes were not being used.
- Fixed bug in `DimPlot_scCustom` that caused mismatch of colors between plots when using `split.by` if one of the plots was missing 1 or more of the `group.by` levels ([#37](https://github.com/samuel-marsh/scCustomize/issues/37)).
- Fixed bug in `VlnPlot_scCustom` that caused raster warning messages to be displayed twice ([#42](https://github.com/samuel-marsh/scCustomize/issues/42)).
- Fixed bug in `Iterate_PC_Loading_Plots` that caused error when specifying current directory with `file_path = NULL` or `file_path = ""`
- Fixed bug in `DotPlot_scCustom` that prevented plotting of features in meta.data slot ([#44](https://github.com/samuel-marsh/scCustomize/issues/44)).
- Fixed error messaging/reporting in `Stacked_VlnPlot` when no supplied features were present.
- Fixed bug in `plotFactors_scCustom` that was ignoring provided file name.
- Fixed bug in `plotFactors_scCustom` that caused progress to only display progress up to 50% even when it was fully complete.
- Fixed bug in `Clustered_DotPlot` that resulted in error related to color palettes if number of clusters was greater than 36 ([#49](https://github.com/samuel-marsh/scCustomize/issues/49)).
- Fixed bug in `Add_Mito_Ribo_LIGER` that resulted custom column names (e.g. `mito_name = "pct.mt"`) being disregarded and also therefore issue with `overwrite` parameter. ([#51](https://github.com/samuel-marsh/scCustomize/issues/51)).
- Fixed bug in `Store_Misc_Info_Seurat` that prevented function from working.
- Fixed bug in `Plot_Density_Custom` when supplying `custom_palette` and multiple features. ([#51](https://github.com/samuel-marsh/scCustomize/issues/53)).
- Fixed bug in `Clustered_DotPlot` so that legend with identities is displayed by factor level of Seurat object idents ([#55](https://github.com/samuel-marsh/scCustomize/issues/55)).
- Fixed bug in `Split_FeatureScatter` to remove test code that prevented function from working properly ([#57](https://github.com/samuel-marsh/scCustomize/issues/57)).
- Fixed bug in `DimPlot_All_Samples`, `Split_FeatureScatter`, and `DimPlot_scCustom` that ignored factor order when plotting groups.
- Fixed error due to deprecation of functions in Matrix package v1.5-0+ ([#61](https://github.com/samuel-marsh/scCustomize/issues/61)).  
- Fixed error that prevent returning `FeaturePlot_scCustom` when setting `split.by` and one or more of features provided was not present in object ([#64](https://github.com/samuel-marsh/scCustomize/issues/64)).  
- Typo/styling fixes.
 

# scCustomize 0.7.0 (2022-01-10)  
## Added
- Added `VlnPlot_scCustom` function.
- Added raster support to `Stacked_VlnPlot`
- Added `make_unique` parameter to `Extract_Top_Markers` function.
- Added `Clustered_DotPlot` function.
- Added Drosophila Melanogaster as default species option in `Add_Mito_Ribo_Seurat` and `Add_Mito_Ribo_LIGER`.

## Changed
- Now requires Seurat v4.0.6 (instead of v4.0.5) to support ability to rasterize points in `VlnPlot`.
- viridis color palette shortcuts now contain palettes with 30 colors (increased from 10).

## Fixes
- Fixed `Read_Metrics_10X` errors that occurred due to differing outputs depending on Cell Ranger version or type of assay.
- Added direct `importFrom` for `DefaultDimReduc` from SeuratObject package to avoid potential errors.
- Fixed typos/styling in function documentation.
 

# scCustomize 0.6.3 (2021-12-16)  
## Fixes
- Fixed `Read_Metrics_10X` errors that occured due to differing outputs depending on Cell Ranger version or type of assay.
- Added direct `importFrom` for `DefaultDimReduc` from SeuratObject to avoid potential errors.
 

# scCustomize 0.6.2 (2021-12-01)  
## Fixes
- Fixed barcode name duplication checks in `Merge_Sparse_Data_All`. ([#8](https://github.com/samuel-marsh/scCustomize/issues/8))
- Fixed package imports in DESCRIPTION to avoid installation errors.
- Fixed NULL check in `Read_Metrics_10X`, `Read10X_Multi_Directory`, and `Read10X_h5_Multi_Directory`.
 

# scCustomize 0.6.1 (2021-11-19)
## Added
- Added plot spacing control to `StackedVlnPlot` with parameters `plot_spacing` and `spacing_unit`. ([#6](https://github.com/samuel-marsh/scCustomize/issues/6))
- Added `scCustomize_Palette` function select palette to use (simplify internal code).

## Changes
- Changed citation info to reflect global DOI and not version DOI.

## Fixes
- Restore package color palette defaults to `Iterate_VlnPlot`.  
- Fix `Iterate_...` function checks for file path parameter if `file_path = NULL`.
  
# scCustomize 0.6.0 (2021-11-16)
## Added
- scCustomize is public!!  Version 0.6.0 is released!

## Changes
- Many function names have changed since private release see reference page/manual for updated function names.
