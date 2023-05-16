import 'dart:io';

class Calculator
{
   double? a,b;

   void setData({required double a,required double b})
   {
      this.a=a;
      this.b=b;
   }

   void getData()
   {
     print("A : $a");
     print("B : $b");
   }

   void addition()
   {
      print("Addition is : ${a!+b!}");
   }

   void multiplication()
   {
      print("Multiplication is : ${a!*b!}");
   }

   void Substraction()
   {
      print("Substraction is : ${a!-b!}");
   }

   void division()
   {
      print("Division is : ${a!~/b!}");
   }
}

void main()
{
  double a,b;
  int ch;

  Calculator c= Calculator();

  stdout.write("Enter The Value Of A :");
  a=double.parse(stdin.readLineSync()!);

  stdout.write("Enter The Value Of B :");
  b=double.parse(stdin.readLineSync()!);

  c.setData(a: a, b: b);
  c.getData();

  int tmp=0;

  do{

    if(tmp==0)
    {
      tmp++;
    }
    else
    {
      stdout.write("Enter Any Alphabet For Continue : ");
      String s=stdin.readLineSync()!;
    }
    print("Press 1 for Addition ");
    print("Press 2 for Multiplication ");
    print("Press 3 for Substraction ");
    print("Press 4 for Division ");
    print("Press 0 for Exit ");

    print("----------------------------------");
    stdout.write("Enter Your Choice :");
    ch=int.parse(stdin.readLineSync()!);
    print("----------------------------------");

    switch(ch)
    {
      case 1:
        c.addition();
        print("----------------------------------");
      break;
      case 2:
      c.multiplication();
      print("----------------------------------");
      break;
      case 3:
      c.Substraction();
      print("----------------------------------");
      break;
      case 4:
      c.division();
      print("----------------------------------");
      break;
      case 5:
      exit(0);
      break;

      default :
      print("Invalid Choice....");
      break;

    }

  }while(ch!=0);


}

