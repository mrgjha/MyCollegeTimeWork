 

<html>
<head>
<title>C# Function</title>
</head>

<body background="MEDAQUA.gif" text="black" link="white" vlink="#FFFF00">
<b>

<pre>


 using System;

 namespace MethodOverloading
 {
     public class Time
     {
         // private member variables
         private int Year;
         private int Month;
         private int Date;
         private int Hour;
         private int Minute;
         private int Second;

         // public accessor methods
         public void DisplayCurrentTime()
         {
             System.Console.WriteLine("{0}/{1}/{2} {3}:{4}:{5}",
                 Month, Date, Year, Hour, Minute, Second);
         }

         // constructors
         public Time(System.DateTime dt)
         {
             Year =      dt.Year;
             Month =     dt.Month;
             Date =      dt.Day;
             Hour =      dt.Hour;
             Minute =    dt.Minute;
             Second =    dt.Second;
         }

         public Time(int Year, int Month, int Date,
             int Hour, int Minute, int Second)
         {
             this.Year =     Year;
             this.Month =    Month;
             this.Date =     Date;
             this.Hour =     Hour;
             this.Minute =   Minute;
             this.Second =   Second;
         }
     }

    class Tester
    {
       public void Run()
       {
           System.DateTime currentTime = System.DateTime.Now;

           Time time1 = new Time(currentTime);
           time1.DisplayCurrentTime();

           Time time2 = new Time(2000,11,18,11,03,30);
           time2.DisplayCurrentTime();
       }

       static void Main()
       {
          Tester t = new Tester();
          t.Run();
       }
    }
 }

</pre>

<center><A HREF=Javascript:history.go(-1)><img src=previous.gif width="89" height="16"></A></center>
</b>
</body>
</html>