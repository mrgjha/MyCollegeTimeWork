
public interface Result {

void Pass();
void Fail();

}


public class FinalExam : Result {

public void Pass() {

Console.WriteLine("80% Pass");

}

void Result.Fail() {
Console.WriteLine("20% Pass");
}
}


void Main() {

FinalExam showresult=new FinalExam();

showresult.Pass();

Result percentage=showresult
showresult.Fail();
}



