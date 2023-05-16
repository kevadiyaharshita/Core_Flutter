import 'dart:io';

class Student_Marksheet
{
  int? maths,science,english;//subjects
  int? id;
  String? name;
  String? std;
  double? per;
  int? total;
  


Student_Marksheet(int i)
{
  print("Student : $i");

  stdout.write("Enter ID :");
  id=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Name :");
  name=(stdin.readLineSync());

  print("Enter Marks :");

  stdout.write("Maths :");
  maths=int.parse(stdin.readLineSync()!);
  
  stdout.write("Science :");
  science=int.parse(stdin.readLineSync()!);

  stdout.write("English :");
  english=int.parse(stdin.readLineSync()!);

   total=maths!+science!+english!;
   per=(total!~/3).toDouble();

}

void getData()
{
  print("---------------------------------------------");
  print("  ID   : $id");
  print("  Name : $name");
  print("---------------------------------------------");
  print("---------------------------------------------");
  print("  Maths\t\t: $maths");
  print("  Science\t: $science");
  print("  English\t: $english");
  print("---------------------------------------------");
  print("  Total\t\t: $total");
  print("---------------------------------------------");
  stdout.write("Percentage : $per");
  if(per! >= 35  && per!<=100)
  {
    stdout.write("(PASS)");
  }
  else
  {
    stdout.write("(FAIL)");
  }
  print("\n---------------------------------------------");

}
}

void main()
{
  stdout.write("How Many Students :");
  int n=int.parse(stdin.readLineSync()!);

  List Stud=List.generate(n, (index) => Student_Marksheet(index+1));

  Stud.forEach((element) {
    element.getData();
  });

}