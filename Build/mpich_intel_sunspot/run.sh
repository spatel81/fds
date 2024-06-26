#!/bin/bash
#
# MPI and OpenMP settings
NNODES=1
NRANKS_PER_NODE=1 # Meshes
NDEPTH=1
NTHREADS=1
export AFFINITY_RANKS_PER_GPU=1
export FDS_RANKS_PER_GPU=${AFFINITY_RANKS_PER_GPU}

NTOTRANKS=$(( NNODES * NRANKS_PER_NODE ))

mpiexec -n ${NTOTRANKS} \
        --env OMP_NUM_THREADS=${NTHREADS} \
	--env OMP_PLACES=threads \
	gpu_tile_compact.sh \
        ./fds_mpich_intel_sunspot test_8mesh_RS2.fds -mat_type aijkokkos -vec_type kokkos > output_run1.txt
