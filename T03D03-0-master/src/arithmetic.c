#include <stdio.h>

int sum(int a, int b);
int dif(int a, int b);
int mul(int a, int b);
int quo(int a, int b);

int main() {
    int x, y;
    if (scanf("%d%d", &x, &y) == 2) {
        if ((y > 0) || (y < 0)) {
            printf("%d %d %d %d\n", sum(x, y), dif(x, y), mul(x, y), quo(x, y));
        } else {
            printf("%d %d %d n/a\n", sum(x, y), dif(x, y), mul(x, y));
        }
    } else {
        printf("n/a\n");
    }
    return 0;
}

int sum(int a, int b) { return a + b; }
int dif(int a, int b) { return a - b; }
int mul(int a, int b) { return a * b; }
int quo(int a, int b) { return a / b; }
