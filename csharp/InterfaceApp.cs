using System;

public class Welcome

{

protected string Data;

public string Data;
{

get

{

return this.Data;

}

set

{

this.Data=value;
}

}
}

interface I
{

bool Validate();

}

class Printwelcome :welcome,I
{

public Printwelcome()
{
data="Welcome to C#";
}

public bool validate()
{
Console.WriteLine("Validating....{0}",data);
return true;
}
}

class InterfaceApp
{

public static void Main()
{

Printwelcome print=new Printwelcome();

I val=(I)print;

Console.WriteLine("The validation od '{0}' was {1} successful",pprint.data,(true==success?"":"not"));
}
}
