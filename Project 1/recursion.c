#include < stdio.h >
void rec(int n) {
    if (n < 0)
        return;
    rec(n-1);
    printf("%d\n", n);
}
int main() {
    rec(32);
    return 0;
}