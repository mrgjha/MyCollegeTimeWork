/* prog5-1.c: colours */

#include <stdio.h>

enum colours {RED, ORANGE, YELLOW, GREEN, BLUE, INDIGO, VIOLET,
              NUMBER_OF_COLOURS};

typedef enum colours colour_t;

int main(void)
{
   colour_t sky, forest;
   clrscr();
   printf("There are %d colours in the enum\n", NUMBER_OF_COLOURS);

   sky = BLUE;
   forest = GREEN;

   printf("sky = %d\n", (int)sky);
   printf("forest = %d\n", (int)forest);
   getch();
   return 0;
}
