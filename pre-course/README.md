# Pre-Course Reading

This page collects short reading material for the GML Spatial and Machine
Learning Teaching Material 2026 course. It is intended as background reading
only. There are no setup checks, installation tasks, or exercises here.

If time is limited, read the core links first. The optional links are useful for
participants who want more context before the workshop.

## Suggested Reading Time
- Basic coding tutorials: only need to read this part if R, Python, or JupyterLab are new to you
- Theme single cell 000 (not discussed in the course, prodivded here as an optional reading): 25-30 minutes
- Theme spatial 001: 20-25 minutes
- Theme spatial 002: 25-30 minutes
- Theme spatial 003: 30-40 minutes
- Theme spatial 006: 35-45 minutes


Total core reading time is about 2-3 hours.

## Foundations - R, Python, and JupyterLab (Skip this if you know basic R, Python)

Expected background:

- The course runs code in R and Python inside JupyterLab notebooks. If any of
  these are new, work through one reading or video below before the workshop.

Detailed reading:

- [Python official tutorial](https://docs.python.org/3/tutorial/)
  - Focus on variables, data types, lists and dicts, control flow, functions,
    and importing modules.
- [R for Data Science (2e)](https://r4ds.hadley.nz/)
  - Focus on vectors, data frames, and the basic tidyverse workflow.
- [JupyterLab documentation](https://jupyterlab.readthedocs.io/en/stable/)
  - Focus on the interface, running cells, kernels, and managing notebooks.

Video walkthroughs (if you prefer watching):

- [Learn Python - Full Course for Beginners (freeCodeCamp)](https://www.youtube.com/watch?v=rfscVS0vtbw)
- [R Programming Tutorial - Learn the Basics of Statistical Computing (freeCodeCamp)](https://www.youtube.com/watch?v=_V8eKsto3Ug)
- [Jupyter Notebook Tutorial: Introduction, Setup, and Walkthrough (Corey Schafer)](https://www.youtube.com/watch?v=HW29067qVWk)

Why it matters:

- Every later module runs code in notebooks. A small amount of comfort with the
  language and the notebook interface makes the analysis steps much easier to
  follow.

## Theme 000 - Single-Cell RNA-seq Data Analysis (Optional reading, not included in the classes)

Expected background:

- Count matrices, cells, genes, and sparse expression data.
- Basic QC concepts such as library size, detected genes, mitochondrial reads,
  normalization, PCA, clustering, and marker genes.

Core reading:

- [Seurat guided clustering tutorial (PBMC 3K)](https://satijalab.org/seurat/articles/pbmc3k_tutorial.html)
  - Focus on object creation, QC metrics, normalization, variable features,
    PCA, clustering, and marker gene interpretation.
- [Scanpy preprocessing and clustering](https://scanpy.readthedocs.io/en/stable/tutorials/basics/clustering.html)
  - Use this as the Python-side comparison for the same analysis concepts.

Optional reading:

- [Orchestrating Single-Cell Analysis with Bioconductor](https://bioconductor.org/books/release/OSCA/)
  - Good reference for the broader single-cell analysis workflow and common
    terminology.

Why it matters:

- The course starts from standard single-cell analysis ideas before adding
  spatial coordinates, images, tissue structure, and deep learning models.

## Theme 001 - Spatial Single-Cell Visualization

Expected background:

- Spatial transcriptomics adds coordinates, images, segmentation, and platform
  metadata to expression matrices.
- Visualization is often the first quality check for whether expression,
  cell-type labels, and tissue morphology agree.

Core reading:

- [SpatialData tutorials](https://spatialdata.scverse.org/en/stable/tutorials/notebooks/notebooks.html)
  - Focus on how spatial data are represented across images, shapes, points,
    labels, and tables.
- [Squidpy tutorials](https://squidpy.readthedocs.io/en/stable/notebooks/tutorials/index.html)
  - Skim the tutorial index to see the range of supported spatial platforms,
    especially Visium, Xenium, and other imaging-based examples.

Optional reading:

- [Seurat analysis of image-based spatial data](https://satijalab.org/seurat/articles/seurat5_spatial_vignette_2.html)
  - Useful for participants who prefer the R/Seurat object model.

Why it matters:

- The visualization notebooks use spatial objects, coordinate systems, and
  image-aware plotting. Reading this first makes the data structures less
  surprising during class.

## Theme 002 - Clustering And Cell Typing

Expected background:

- Clustering groups transcriptionally similar cells or spots.
- Cell typing assigns biological meaning using marker genes, references, label
  transfer, or automated classifiers.
- Spatial cell typing should be interpreted together with morphology and tissue
  position.

Core reading:

- [Seurat guided clustering tutorial (PBMC 3K)](https://satijalab.org/seurat/articles/pbmc3k_tutorial.html)
  - Revisit the clustering and marker gene sections if you have not used Seurat
    recently.
- [Seurat analysis of image-based spatial data](https://satijalab.org/seurat/articles/seurat5_spatial_vignette_2.html)
  - Focus on how image-based assays store centroids, molecule positions, and
    segmentation boundaries.

Optional reading:

- [CellTypist documentation](https://celltypist.readthedocs.io/en/latest/)
  - Useful background for automated cell type annotation and label transfer
    concepts, even if the workshop uses different tools.

Why it matters:

- The module moves from preprocessing into clusters, markers, label transfer,
  and biological annotation. The key skill is knowing when a computational
  label is plausible in the tissue context.

## Theme 003 - Downstream Spatial Analysis

Expected background:

- Downstream spatial analysis asks whether cell types, states, or signals are
  arranged non-randomly in tissue.
- Neighborhood analysis and cell-cell interaction analysis depend on spatial
  proximity definitions and biological interpretation of cell identities.

Core reading:

- [hoodscanR GitHub repository](https://github.com/DavisLaboratory/hoodscanR)
  - Read the project overview to understand neighborhood scanning and community
    analysis goals.
- [CellChat GitHub repository](https://github.com/jinworks/CellChat)
  - Focus on the package purpose: inferring, visualizing, and analyzing
    cell-cell communication from single-cell and spatial transcriptomics.
- [stLearn documentation](https://stlearn.readthedocs.io/en/latest/)
  - Skim the CCI tutorial links and API entries for ligand-receptor and spatial
    CCI functions.

Optional reading:

- [MMCCI GitHub repository](https://github.com/GenomicsMachineLearning/MMCCI)
  - Useful context for multimodal cell-cell interaction analysis used in the
    workshop material.

Why it matters:

- These notebooks are less about running one standard pipeline and more about
  interpreting spatial neighborhoods, ligand-receptor results, and tissue
  context without overclaiming causality.

## Theme 006 - Deep Learning

Expected background:

- Neural networks learn functions from input features to outputs using
  trainable parameters, loss functions, and optimization.
- CNNs work naturally with image patches; transformers work with token
  sequences and attention.
- Spatial omics deep learning often combines expression, tissue image patches,
  spatial position, and labels or continuous gene-expression targets.

Core reading:

- [PyTorch basics](https://docs.pytorch.org/tutorials/beginner/basics/intro.html)
  - Focus on tensors, datasets, dataloaders, model definition, optimization,
    and training loops.
- [Attention in transformers, visually explained (3Blue1Brown)](https://www.youtube.com/watch?v=eMlx5fFNoYc)
  - Watch for an intuitive, visual explanation of attention and how transformer
    models work.
- [An Image is Worth 16x16 Words: Vision Transformer explained (Yannic Kilcher)](https://www.youtube.com/watch?v=TrdevFK_am4)
  - Watch for a walkthrough of how image patches become transformer tokens in
    the Vision Transformer.

Optional reading:

- [PyTorch neural networks tutorial](https://docs.pytorch.org/tutorials/beginner/basics/buildmodel_tutorial.html)
  - Helpful if you want a concrete reminder of how `torch.nn.Module` models are
    structured before class.

Why it matters:

- The deep learning notebooks build from autoencoders and CNNs toward
  expression transformers and vision transformers. The important preparation is
  understanding the model inputs, outputs, and loss functions rather than
  memorizing architecture details.
