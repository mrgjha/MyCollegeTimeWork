

class HelloObject {
// method definition
void speak() {
System.out.println("Hello from an object!");
}
}
class HelloTester {
public static void main ( String[] args ) {
HelloObject anObject = new HelloObject();
anObject.speak();
}
}



/*class HelloObject { // The class definition is 
                    // used to make the object


void speak() {        //A speak() method

// is included in the object.

System.out.println("Hello from an object!"); //The speak() method

// of the object prints on the screen.
//The method returns to the caller.



}
}


class HelloTester {
public static void main ( String[] args ) { //Main starts running.
HelloObject anObject = new HelloObject();   //A HelloObject is created.
anObject.speak();                             //The object's speak() method is called.
}                                           //The entire program is finished.
}



public class HelloObject {
String greeting;
HelloObject( String st ) {
greeting="st";
}
void speak() {
System.out.println( greeting );
}
}

*/