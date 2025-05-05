/* Simplified function inspired by stepanov_container */
#include <stdint.h>
#include <stdio.h>

void simplified(double *arr, int64_t idx, int64_t last, double val) {
    int64_t i = idx;
    while ((last - 1) / 2 > i) {
        int64_t left = 2 * i + 2;
        int64_t right = 2 * i + 1;

        int64_t max_child = (arr[left] < arr[right]) ? right : left;
        arr[i] = arr[max_child];

        i = max_child;
    }
    int64_t j = i;
    if ((last & 1) == 0) {
        int64_t mid = (last - 2) / 2;
        if (j == mid) {
            int64_t k = (j << 1) | 1;
            arr[j] = arr[k];
            j = k;
        }
    }
    while (j > idx) {
        int64_t parent = (j - 1) / 2;
        if (arr[parent] < val) {
            arr[j] = arr[parent];
            j = parent;
        } else {
            break;
        }
    }
    arr[j] = val;
}

int main(void) {
    double heap[16] = {0};
    for (int i = 0; i < 16; ++i)
        heap[i] = (double)(32 - i);

    simplified(heap, 0, 15, 10.5);

    for (int i = 0; i < 8; ++i)
        printf("%f\n", heap[i]);

    return 0;
}
