#!/bin/bash
#

# Installation of KUL_NeuroImaging_Tools
cd $VSC_DATA
mkdir apps
cd apps
git clone https://github.com/treanus/KUL_NeuroImaging_Tools.git
cd KUL_NeuroImaging_Tools/
git checkout development

# Installation of fmriprep as a singularity container
cd $VSC_DATA
mkdir apps
cd apps
SINGULARITY_TMPDIR=$VSC_SCRATCH
export SINGULARITY_TMPDIR
mkdir ${VSC_DATA}/singularity_cache
SINGULARITY_CACHEDIR=${VSC_DATA}/singularity_cache
export SINGULARITY_CACHEDIR
singularity build fmriprep_20.2.0.simg docker://poldracklab/fmriprep:20.2.0
mkdir fmriprep
mv fmriprep_20.2.0.simg fmriprep



