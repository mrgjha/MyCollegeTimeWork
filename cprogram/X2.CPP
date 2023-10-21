#include<iostream.h>
#include<conio.h>

class Department;   // forward reference

class Employee  {
    char* name;
public:
    Employee(char* nm) { name = nm; }
    void joindepartment(Department& dp);
    void displayname() const
	{ cout << name << '\n'; }
};
class Department {
    Employee* employees[5];
    int emplcount;
public:
void listemployees()  const;
    Department() { emplcount = 0; }
    void addemployee(Employee* emp)
       { employees[emplcount++] = emp; }

};
void Employee::joindepartment(Department& dp)
{
    dp.addemployee(this);
}




void Department::listemployees()  const
	{

	for (int i = 0; i < emplcount; i++)
	    employees[i]->displayname();
    }

void main()
{

    clrscr();
    Department dp;
    Employee emp1("Sam");
    emp1.joindepartment(dp);
    Employee emp2("Bill");
    emp2.joindepartment(dp);
    dp.listemployees();

getch();
}
