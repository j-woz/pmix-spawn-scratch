


#include <mpi.h>

#include <stdio.h>

int main()
{
  printf("HELLO\n");
  MPI_Init(NULL, NULL);
  MPI_Finalize();
  return 0;
}
