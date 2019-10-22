#!/bin/bash

gcc print_bin_result.c -o print_bin_result
mpicc my_solution.c -o my_solution

# test
./my_solution test_data/4.in test_data/4.out
./print_bin_result test_data/4.out 

# 
mpirun -n 1 my_solution test_data/2048.in test_data/2048.out.1
mpirun -n 2 my_solution test_data/2048.in test_data/2048.out.2
mpirun -n 4 my_solution test_data/2048.in test_data/2048.out.4
mpirun -n 8 my_solution test_data/2048.in test_data/2048.out.8
mpirun -n 16 my_solution test_data/2048.in test_data/2048.out.16

#
mpirun -n 1 my_solution test_data/256.in test_data/256.out.1
mpirun -n 4 my_solution test_data/256.in test_data/256.out.4
mpirun -n 1 my_solution test_data/512.in test_data/512.out.1
mpirun -n 4 my_solution test_data/512.in test_data/512.out.4

mpirun -n 1 my_solution test_data/1024.in test_data/1024.out.1
mpirun -n 4 my_solution test_data/1024.in test_data/1024.out.4

mpirun -n 1 my_solution test_data/2048.in test_data/2048.out.1
mpirun -n 4 my_solution test_data/2048.in test_data/2048.out.4

mpirun -n 1 my_solution test_data/4096.in test_data/4096.out.1
mpirun -n 4 my_solution test_data/4096.in test_data/4096.out.4

