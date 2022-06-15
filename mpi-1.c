
#include <stdio.h>

#include <mpi.h>

int
main()
{
  printf("HELLO\n");
  MPI_Init(NULL, NULL);
  int rank, size;
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Comm_size(MPI_COMM_WORLD, &size);
  if (rank == 0)
    printf("rank: %i/%i\n", rank, size);
  MPI_Finalize();
  printf("BYE\n");
  return 0;
}
