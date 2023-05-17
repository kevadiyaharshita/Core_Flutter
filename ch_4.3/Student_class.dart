import 'dart:io';

class Student
{
  int? _id;
  String? _name;
  double? _per;

  void setData()
  {
    stdout.write("Enter Id :");
    _id=int.parse(stdin.readLineSync()!);

    stdout.write("Enter Name :");
    _name=stdin.readLineSync()!;

     stdout.write("Enter Percentage :");
     _per=double.parse(stdin.readLineSync()!);

  }

  void getData()
  {
    print("-----------------------------------");
    print("ID\t: $_id\nName\t: $_name\nPer\t: $_per");
  }

  double get getper
  {
     return _per!;
  }

   String get getName{
     return _name!;
   }

  int get getId{
    return _id!;
  }

}