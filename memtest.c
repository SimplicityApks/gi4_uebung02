#include <stdio.h>

struct bigone {
    char index;         /* =7 */
    int avalue;         /* = -512 */
    short shortvalue;   /* =127 */
    char space;         /* =32 */
    short sarray [2];   /* = {0x123, 0x456} */
    int anothervalue;   /* = 4096 */
};

int main(int argc, char* argv[]) {
    struct bigone s;
    s.index = 7;
    s.avalue = -512;
    s.shortvalue = 127;
    s.space = 32;
    s.sarray[0] = 0x123;
    s.sarray[1] = 0x456;
    s.anothervalue = 4096;

    return 0;
}
