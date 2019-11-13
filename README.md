# dijkstra_mpi
The goal of this project is to design an implement parallel algorithms to solve the all-pairs-shortest path problem for a number of large graphs using Dijkstra’s algorithms.
## use 
This program can only be used in environment with mpi installed.<br>
what is [mpi](https://en.wikipedia.org/wiki/Message_Passing_Interface "Title") ?<br>
`./run.sh`<br>
`./run2.sh`<br>

## input files
The input file format is essentially a flattened adjacency matrix for a directed, weighted graph. All weights are positive integers. These are binary files
(not text files) and will need to be read in as such. More specifically, each file
contains:
* The number of vertices (numV)
* numV x numV integers specifying the weights for all connections
For example the graph:<br>
![Alt text](https://github.com/Dennis174698/dijkstra_mpi/blob/master/graph.PNG)<br>
corresponds to the following adjacency matrix:<br>
                      0 15 1 1<br>
                      0  0 3 0<br>
                      1  3 0 0<br>
                      0  1 1 0<br>
                      which would be specified by the file example.in<br>
                      4 0 15 1 1 0 0 3 0 1 3 0 0 0 1 1 0<br>
## print output
`./print_bin_result test_data/xxx.out`<br>
