#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    const char *file_name = argv[1];
    FILE *f = fopen(file_name, "rb");
    if (f == NULL) {
        fprintf(stderr, "Failure to open file %s!\n", file_name);
        exit(1);
    }
    int vertices_number;
    fread(&vertices_number, sizeof(int), 1, f);

    int *adjacency_matrix = (int *) malloc(sizeof(int) * vertices_number * vertices_number);
    int i = 0;
    for (; i < vertices_number; i++) {
        fread(adjacency_matrix, sizeof(int), vertices_number * vertices_number, f);
    }

    int row = 0;
    for (; row < vertices_number; row++) {
        int col = 0;
        for (; col < vertices_number; col++) {
            printf("%d ", adjacency_matrix[row * vertices_number + col]);
        }
        printf("\n");
    }
    return 0;
}
