#!/bin/bash

node=$(hostname -I | cut -f1 -d' ')
user=$(whoami)

for port in $(shuf -i 3000-4000); do
  if ! ss -lptn | grep -q ":$port"; then
    echo "Port $port is available"
    break
  fi
done

echo -e "
Command to create ssh tunnel:
ssh -N -L ${port}:${node}:${port} ${user}@${node}
Use a Browser on your local machine to go to:
localhost:${port}  (prefix w/ https:// if using password)
"

# Read-only teaching data (never write here; save outputs in notebook cwd)
target_dir="/scratch/$USER/gml-teaching-2026/data"
data_root="/data/module2"
if [ ! -e "$data_root/data" ] && [ -d "$data_root" ]; then
  data_root="/data/module2"
fi
if [ ! -e "$target_dir" ]; then
  ln -s "$data_root" "$target_dir"
fi

GML_ENV="/software/conda-envs/envs/gml-teaching"
export PATH="$GML_ENV/bin:$PATH"
# Fix for GLIBC error
# https://stackoverflow.com/questions/58424974/anaconda-importerror-usr-lib64-libstdc-so-6-version-glibcxx-3-4-21-not-fo
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH:-}:${CONDA_PREFIX:-$GML_ENV}/lib"

# User-level kernels pointing at gml-teaching env (hotfix for mismatched notebook metadata)
"$GML_ENV/bin/python" -m ipykernel install --user \
  --name gml-teaching --display-name "Python 3 (gml-teaching)"
"$GML_ENV/bin/Rscript" -e \
  'IRkernel::installspec(name="ir-gml-teaching", displayname="R (gml-teaching)")'

cd /scratch/$USER/gml-teaching-2026
jupyter notebook --no-browser --port=${port} --ip=0.0.0.0
