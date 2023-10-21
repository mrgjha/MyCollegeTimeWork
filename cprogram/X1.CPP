#include <iostream.h>
#include<conio.h>
class Date    {
    int mo, da, yr;
public:
    Date()
	{ cout << "Constructor\n"; }
    ~Date()
	{ cout << "Destructor\n"; }
};
void main()
{

 clrscr();

    Date* dt = new Date[5];
    cout << "Process the dates\n";
    delete [] dt;;       // deleting 5 items
    getch();

}