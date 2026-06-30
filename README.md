
![Genomics and Machine Learning Lab, QIMR and UQ Logo](images/logo.png)

# GML Spatial and Machine Learning Teaching Material 2026

Before the course, see the [pre-course reading guide](pre-course/README.md) for
2-3 hours of background reading mapped to the modules.

An overview of the materials to be covered in this course:
* [Module 000 - Single Cell RNAseq Data Analysis](#Module-000---Single-Cell-RNAseq-Data-Analysis)
  * Single Cell Data Analysis
* [Module 001 - Spatial Single Cell Visualisation](#Module-001---Spatial-Single-Cell)
  * Single Cell Spatial Data Visualisation
  * stLearn/Xenium Explorer
* [Module 002 - Introducing Spatial Analysis](#Module-002---Clustering-and-Cell-Types)
  * Preprocessing
  * Clustering and Cell Typing
  * Deconvolution and Label Transfer
* [Module 003 - Downstream Analysis](#Module-003---Downstream-Analysis)
  * Community Analysis
  * Cell-Cell Interaction Analysis
  * Xiao & Quan
* [Module 006 - Deep Learning](#Module-006---Deep-Learning)
  * Xiao & Quan

# Data
* Module 0 scRNAseq (not about spatial omics)
  * [PBMC 3K scRNAseq data pbmc3k_filtered_gene_bc_matrices.tar.gz](https://s3-us-west-2.amazonaws.com/10x.files/samples/cell/pbmc3k/pbmc3k_filtered_gene_bc_matrices.tar.gz) (7.6 MB)
* Module 1
  * [Xenium_with_labels.zarr.tar.gz](https://downloads.gmllab.com/qimr-teaching-2024/Xenium_with_labels.zarr.tar.gz) (1.0 GB)
  * [cosmx.h5ad](https://downloads.gmllab.com/qimr-teaching-2024/cosmx.h5ad) (1.3 GB)
* Module 2
  * 2.1 - Cell Typing Tutorial
    * [visium.RDS](https://downloads.gmllab.com/qimr-teaching-2024/visium.RDS) (7.4 MB)
    * [xenium.RDS](https://downloads.gmllab.com/qimr-teaching-2024/xenium.RDS) (33 MB)
  * 2.2 - Cell Typing Example
    * [scRNA_processed.RDS](https://downloads.gmllab.com/qimr-teaching-2024/scRNA_processed.RDS) (364 MB)
    * [visium_processed.RDS](https://downloads.gmllab.com/qimr-teaching-2024/visium_processed.RDS) (36 MB)
    * [xenium_processed.RDS](https://downloads.gmllab.com/qimr-teaching-2024/xenium_processed.RDS) (98 MB)
* Module 3
  * 3.1 - Community Analysis
    * [CosMx_Skin_Melanoma.RData](https://downloads.gmllab.com/qimr-teaching-2024/CosMx_Skin_Melanoma.RData) (7.2 MB)
  * 3.2 - Neighborhood Coordination
    * [spatial.csv](https://downloads.gmllab.com/qimr-teaching-2024/spatial.csv) (2.6 MB)
  * 3.3 - Cell-Cell Interaction
    * [Visium_Skin_A2_cellchat.rds](https://downloads.gmllab.com/qimr-teaching-2024/Visium_Skin_A2_cellchat.rds) (14 MB)
    * [visium_decon.csv](https://downloads.gmllab.com/qimr-teaching-2024/visium_decon.csv) (375 KB)
    * [scalefactors_json.json](https://downloads.gmllab.com/qimr-teaching-2024/scalefactors_json.json) (204 Bytes)
* Module 4
  * 4.1 Deep Learning

# Running the Learning Materials

Copy and paste each of the following lines into your terminal once you have logged into the workshop server:
* ```/software/bin/micromamba shell init```
* ```source ~/.bashrc```
* ```micromamba activate /software/conda-envs/gml-teaching```
* ```git clone https://github.com/GenomicsMachineLearning/gml-teaching-2026```
* ```~/qimr-teaching-2026/runme.sh```

The output will look something like:
```bash
Port 3502 is available

Command to create ssh tunnel:
ssh -N -L 3502:10.10.10.10:3502 foo@10.10.10.10
Use a Browser on your local machine to go to:
localhost:3502  (prefix w/ https:// if using password)

[I 2024-06-20 05:57:41.633 ServerApp] Extension package jupyter_lsp took 0.1372s to import
[I 2024-06-20 05:57:44.647 ServerApp]     http://127.0.0.1:3502/tree?token=abc123
```

* Copy the line beginning with "ssh" into a new terminal, on your local computer, and hit [Enter].
* Copy the text beginning with "http://127.0.0.1" into a new tab in your browser, and hit [Enter].

# Module 000 - Single Cell RNAseq Data Analysis
* [scRNAseq Data Analysis](000-single-cell-RNAseq/000_Single_Cell_RNAseq_Analysis_2026.ipynb)

# Module 001 - Spatial Single Cell 

* [Spatial Data Visualisation](./001-spatial-single-cell/1.1_python_single_cell_visualisations.ipynb).

# Module 002 - Clustering and Cell Types

* [Clustering and Cell Typing](002-clustering-cell-typing/2.1_ST_Cell_Typing_Tutorial.ipynb).

# Module 003 - Downstream Analysis 

* [Cell community identification](./003-downstream-analysis/3.1_hoodscanR.ipynb).
* [Neighborhood Coordination and Cell Community Identification](./003-downstream-analysis/3.2_neighborhood.ipynb).
* [Cell-Cell Interactions CellChat](./003-downstream-analysis/3.3_CCI_CellChat.ipynb).
* [Cell-Cell Interactions stLearn](./003-downstream-analysis/3.4_CCI_stLearn_MMCCI.ipynb).

# Module 004 - Spatial Statistics

Not present in this checkout.

# Module 005 - Spatial Proteomics 

Not present in this checkout.

# Module 006 - Deep Learning 

* [Deep Learning 01 - Autoencoders & CNNs](004-deep-learning/Deep_learning_01.ipynb).
* [Deep Learning 02 - Spatial autoencoder & transfer learning](004-deep-learning/Deep_learning_02.ipynb).
* [Deep Learning 03 - Transformer for gene expression (genes as tokens)](004-deep-learning/Deep_learning_03_transformer_gene_expression.ipynb).
* [Deep Learning 04 - Vision Transformer for H&E spatial data (patches &rarr; expression)](004-deep-learning/Deep_learning_04_vit_HE_spatial.ipynb).

# Additional Information (Not Required for Course Participants)

The following is not required for participation in the course but is described here to document how the
requirements were set up and to help you install your own  environment in the future. 

## Package Managers

We recommend Conda package management for most users and operating systems. Micromamba is included here for use on the 
HPC and people who are used to using Conda or other package managers. 

Download and install either:
* Conda: https://www.anaconda.com/download/success
* Micromamba: https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html

### Using a package manager with and an environment YAML file (Recommended)

The steps are:
* Create a new environment with the OS specific YAML file,
* Install any extra software directly from source (see "Installing Dependencies from Source").

MacOS:
```
$ conda env create --subdir osx-64 --name gml-teaching --file=environment-macos.yml -y
```

In a custom directory:
```
$ conda env create --subdir osx-64 --prefix [some-directory]/conda-envs/gml-teaching --file=environment-macos.yml -y
```

Currently, all dependencies are only available for x86 (Intel). If you are running an M-series CPU 
(M1, M2, M3, M4, etc.) it will run these under emulation.

Linux:

In your default conda directory:
```
$ conda env create --name gml-teaching --file=environment-linux.yml -y
```

In a custom directory:
```
$ conda create --prefix [some-directory]/conda-envs/gml-teaching --file=environment-linux.yml
```

### Recreating the Conda Environment YAML

If the above YAML fails to install, or you wish to upgrade a dependency, or you wish to recreate it. Run the following
to recreate the Conda environment. 

The steps are:
* Configure the package manager,
* Create a base environment and install packages with conda/micromamba, and
* Installing any further source based dependencies in R and Python (using pip or poetry) directly.

#### Configuring the Package Manager

Firstly, we need to configure conda/micromamba in how it resolves dependencies. We assume you've already installed the
package manager previously.

Create ~/.condarc

```
channels:
  - conda-forge
  - bioconda
  - defaults
  - r
channel_priority: flexible
```

### Create and Activate a New Environment

Next, we need to create the base environment. We're going to assume using "conda" in the following steps, but you can
replace the calls to "conda" with "micromamba" (if that's what you're using).

MacOS:
```
$ conda create --name gml-teaching --subdir osx-64 python=3.10 r-base=4.3 r-devtools -y
$ conda activate gml-teaching
```

Linux:
```
$ conda create --name gml-teaching python=3.10 r-base=4.3 r-devtools -y
$ conda activate gml-teaching
```

HPC:
```
$ micromamba create -p [some-directory]/conda-envs/gml-teaching python=3.10 r-base=4.3 r-devtools -y
$ micromamba activate [some-directory]/conda-envs/gml-teaching
```

### Installing Managed Dependencies

R Dependencies:
```
$ conda install -c bioconda bioconductor-ebimage bioconductor-biocneighbors bioconductor-scater bioconductor-scran bioconductor-splatter bioconductor-edgeR bioconductor-bluster bioconductor-BiocFileCache bioconductor-glmGamPoi bioconductor-SingleCellExperiment bioconductor-SummarizedExperiment bioconductor-ScaledMatrix bioconductor-BiocParallel bioconductor-ebimage r-anndata -y
$ conda install -c conda-forge r-dendextend r-parallelDist r-mixtools r-ggalluvial r-svglite r-sna r-ggpubr r-ggnetwork r-matrix=1.6-3 r-scico r-ggnewscale r-magick r-rjson r-ragg r-units r-stringi r-sf r-s2 r-reticulate r-stringi r-tidyverse r-r.utils r-Seurat r-SeuratObject r-sctransform r-proj r-rcpptoml r-spdep r-lme4 r-ggrastr r-dbscan r-hdf5r r-optparse r-memuse r-sfheaders r-zeallot r-rmapshaper -y
$ conda install -c bioconda presto r-presto bioconductor-dropletutils r-MuSiC bioconductor-hoodscanr bioconductor-infercnv -y 
$ conda install -c conda-forge r-mcmcpack r-fields r-concaveman r-scatterpie r-ggcorrplot r-nnls r-pbmcapply r-NMF r-terra -y
```

Python Dependencies:
```
$ conda install -c conda-forge jupyter pandas fontconfig freetype libtiff r-irkernel numpy==1.26.4 scanpy -y
```

### Installing Unmanaged Dependencies from Source
This install dependencies that aren't managed by packages and need to be installed directly from source.

To install R dependencies run:
```
$ Rscript dependencies.R
```

To install Python dependencies run:
```
$ python -m pip install --use-pep517 -r requirements.txt
```

For MacOS, ensure you have Rust and rust-up installed in order to install Python dependencies 
(run ```rustup target add x86_64-apple-darwin``` before installing). This is for
gseapy and fastremap.

### Cloning an Environment
An example of copying it from group directory (P3903) to a temporary directory on a local scratch:

```
$ conda create --prefix [some-directory]/qimr-teaching-2024/conda-envs/gml-teaching --clone [some-directory]/qimr-teaching-2024/conda-envs/source-conda-dir
```

### Export Environment File

In order to use the environments again, save the conda environment file and remove the fingerprint information:
```
$ conda env export > environment-[linux|windows|macos].yml
```
