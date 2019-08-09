#!/bin/bash
#SBATCH -N 1
#SBATCH -n 4
#SBATCH -t 0:00:30

module purge
module load intel-mkl/2019.1/1/64
module load intel/19.0/64/19.0.1.144
module load openmpi/intel-17.0/1.10.2/64
module load lapack/3.5.0

export PATH=/tigress/LICENSED/ddt/ddt18.0.2/rhel6/x86_64/bin:$PATH
export ALLINEA_MPI_WRAPPER=/home/luet/.allinea/wrapper/libmap-sampler-pmpi-perseus.so

map --profile srun ./sqrtmax
