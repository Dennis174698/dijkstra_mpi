#PSB -l nodes=8:ppn=4
source /ect/bash.bashrc


gcc print_bin_result.c -o print_bin_result
mpicc my_solution.c -o my_solution

# test
mpirun -n 12 --hostfile host1 my_solution test_data/4.in test_data/4.out
./print_bin_result test_data/4.out 

# numbers of compute nodes
mpirun -n 12 --hostfile host1 my_solution test_data/2048.in test_data/2048.out.1
mpirun -n 12 --hostfile host2 my_solution test_data/2048.in test_data/2048.out.2
mpirun -n 12 --hostfile host3 my_solution test_data/2048.in test_data/2048.out.4
mpirun -n 12 --hostfile host4 my_solution test_data/2048.in test_data/2048.out.8
mpirun -n 12 --hostfile host5 my_solution test_data/2048.in test_data/2048.out.16

# second question
mpirun -n 12 --hostfile host1 my_solution test_data/512.in test_data/512.out.1
mpirun -n 12 --hostfile host4 my_solution test_data/512.in test_data/512.out.4

mpirun -n 12 --hostfile host1 my_solution test_data/1024.in test_data/1024.out.1
mpirun -n 12 --hostfile host4 my_solution test_data/1024.in test_data/1024.out.4

mpirun -n 12 --hostfile host1 my_solution test_data/2048.in test_data/2048.out.1
mpirun -n 12 --hostfile host4 my_solution test_data/2048.in test_data/2048.out.4

mpirun -n 12 --hostfile host1 my_solution test_data/4096.in test_data/4096.out.1
mpirun -n 12 --hostfile host4 my_solution test_data/4096.in test_data/4096.out.4
