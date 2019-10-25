
gcc print_bin_result.c -o print_bin_result
mpicc my_solution.c -o my_solution

# test
mpirun  --hostfile host1 my_solution test_data/4.in test_data/4.out
./print_bin_result test_data/4.out 

# numbers of compute nodes
mpirun  --hostfile host1 my_solution test_data/512.in test_data/512.out.1
mpirun  --hostfile host2 my_solution test_data/512.in test_data/512.out.2
mpirun  --hostfile host4 my_solution test_data/512.in test_data/512.out.4
mpirun  --hostfile host8 my_solution test_data/512.in test_data/512.out.8
mpirun  --hostfile host16 my_solution test_data/512.in test_data/512.out.16
mpirun  --hostfile host24 my_solution test_data/512.in test_data/512.out.24
#
mpirun  --hostfile host1 my_solution test_data/1024.in test_data/1024.out.1
mpirun  --hostfile host2 my_solution test_data/1024.in test_data/1024.out.2
mpirun  --hostfile host4 my_solution test_data/1024.in test_data/1024.out.4
mpirun  --hostfile host8 my_solution test_data/1024.in test_data/1024.out.8
mpirun  --hostfile host16 my_solution test_data/1024.in test_data/1024.out.16
mpirun  --hostfile host24 my_solution test_data/2048.in test_data/2048.out.24

#
mpirun  --hostfile host1 my_solution test_data/2048.in test_data/2048.out.1
mpirun  --hostfile host2 my_solution test_data/2048.in test_data/2048.out.2
mpirun  --hostfile host4 my_solution test_data/2048.in test_data/2048.out.4
mpirun  --hostfile host8 my_solution test_data/2048.in test_data/2048.out.8
mpirun  --hostfile host16 my_solution test_data/2048.in test_data/2048.out.16
mpirun  --hostfile host24 my_solution test_data/2048.in test_data/2048.out.24

# second question
mpirun  --hostfile host1 my_solution test_data/4096.in test_data/4096.out.1
mpirun  --hostfile host2 my_solution test_data/4096.in test_data/4096.out.2
mpirun  --hostfile host4 my_solution test_data/4096.in test_data/4096.out.4
mpirun  --hostfile host8 my_solution test_data/4096.in test_data/4096.out.8
mpirun  --hostfile host16 my_solution test_data/4096.in test_data/4096.out.16
mpirun  --hostfile host24 my_solution test_data/4096.in test_data/4096.out.24

