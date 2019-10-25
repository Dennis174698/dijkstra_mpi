#!/bin/bash
gcc print_bin_result.c -o print_bin_result
mpicc my_solution.c -o my_solution

echo "n=1, host_num =1,input_data=4.in"
mpirun -n 1 --hostfile host1 my_solution test_data/4.in test_data/4.out
echo "n=1,host_num=1,input_data=512.in"
mpirun -n 1 --hostfile host1 my_solution test_data/512.in test_data/512.out


echo "n=1,host_num=1,input_data=2048.in"
mpirun -n 1 --hostfile host1 my_solution test_data/2048.in test_data/2048.out.1
echo "n=2,host_num=2,input_data=2048.in"
mpirun -n 2 --hostfile host2 my_solution test_data/2048.in test_data/2048.out.2
echo "n=4,host_num=2,input_data=2048.in"
mpirun -n 4 --hostfile host2 my_solution test_data/2048.in test_data/2048.out.4
echo "n=8,host_num=2,input_data=2048.in"
mpirun -n 8 --hostfile host2 my_solution test_data/2048.in test_data/2048.out.8
echo "n=16,host_num=4,input_data=2048.in"
mpirun -n 16 --hostfile host4 my_solution test_data/2048.in test_data/2048.out.16


echo "n=1,host_num=1,input_data=512.in"
mpirun -n 1 --hostfile host1 my_solution test_data/512.in test_data/512.out.1
echo "n=4,host_num=4,input_data=512.in"
mpirun -n 4 --hostfile host4 my_solution test_data/512.in test_data/512.out.4

echo "n=1,host_num=1,input_data=1024.in"
mpirun -n 1 --hostfile host1 my_solution test_data/1024.in test_data/1024.out.1
echo "n=4,host_num=4,input_data=1024.in"
mpirun -n 4 --hostfile host4 my_solution test_data/1024.in test_data/1024.out.4

echo "n=1,host_num=1,input_data=2048.in"
mpirun -n 1 --hostfile host1 my_solution test_data/2048.in test_data/2048.out.1
echo "n=4,host_num=4,input_data=2048.in"
mpirun -n 4 --hostfile host4 my_solution test_data/2048.in test_data/2048.out.4

echo "n=1,host_num=1,input_data=4096.in"
mpirun -n 1 --hostfile host1 my_solution test_data/4096.in test_data/4096.out.1
echo "n=4,host_num=4,input_data=4096.in"
mpirun -n 4 --hostfile host4 my_solution test_data/4096.in test_data/4096.out.4


