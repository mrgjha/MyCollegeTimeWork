#include <iostream.h>
#include <conio.h>

class X {
protected:
  int a;
public:
  void make_a(int i) { a = i; }
};

class Y {
protected:
  int b;
public:
  void make_b(int i) { b = i; }
} ;

// Z inherits both X and Y
class Z : public X, public Y {
public:
  int make_ab() { return a*b; }
} ;

int main()
{
  Z i;
clrscr();
  i.make_a(10);
  i.make_b(12);
  cout << i.make_ab();
getch();
  return 0;
}