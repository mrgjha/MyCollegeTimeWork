#include <iostream.h>
#include<conio.h>

class Thing  {
public:
    static int ctr;
    Thing()
        { ctr++; }
};

int Thing::ctr;

void main()
{

clrscr();
    Thing t1;
    Thing t2;
    Thing t3;
    cout << ctr << " Things";
getch();
}
