#include <stdio.h>

int main(int argc, char **argv) {
    int char_count = 0;
    int sum = 0;
    for (int i = 0; i < argc; i++) {
        sum = char_count;
        for (char *p = argv[i]; *p != '\0'; p++) {
            char_count++;
        }
        int diff = char_count - sum; // slice criterion
        printf("%d", diff);
    }
    printf("Total number of characters in argv: %d\n", char_count);
    return 0;
}
<<<<<<< HEAD

=======
>>>>>>> b9fc762e756196b99357d88374eea934092bbb80
