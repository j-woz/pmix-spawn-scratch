
# pmix-spawn-scratch

WIP examples for using PMIx spawn from MPI-based workflows.

== Setup

. Build OpenPMIx
. Build PRRTE
. Build OpenMPI w/o PRRTE support

== Tests

workflow-1::
Simple copy of colocate.c

workflow-2::
Add simple MPI Init/Finalize

workflow-3::
Add MPI communication




Questions

Difference between bin/prte - DVM master
   and bin/prted - backend daemon to spawn procs

Query if prte is running
   openpmix/pps
   look in /tmp/prte.host.*/

How to run MPI app

darray is array of processes to be colocated with

Things to try:

prun -n 8 colocate -- but spawn on rank 0

prun -n 8 colocate -- but spawn 2x 4-rank subjobs on rank 0, 5
  need to create new darrays of proc_t
  nspaces is the same
  set correct ranks
