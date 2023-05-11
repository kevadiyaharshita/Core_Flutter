/*
Writ a Dart Program to gt an print total thr
mplo!s information using usr input an
Map atat!p(us MapEntr! class)

Tak low mntion attriuts for on
mplo!
i
nam
ag
salar!
*/

import 'dart:io';

void main()
{

  stdout.write("Enter The Number Of Employee :");
  int n=int.parse(stdin.readLineSync()!);
  List<Map<String,dynamic>> Data=List.generate(n, (index) {
    print("Employee : ${index+1}/n");
    stdout.write("Enter Id\t: ");
    int id=int.parse(stdin.readLineSync()!);

    stdout.write("Enter Name\t: ");
    String name=stdin.readLineSync()!;

    stdout.write("Enter Age\t: ");
    int age=int.parse(stdin.readLineSync()!);

    stdout.write("Enter Salary\t: ");
    int salary=int.parse(stdin.readLineSync()!);



    return {'id': id,'name': name,'age': age,'salary':salary };

  });
  print("Id\tname\tage\tSalary");
  Data.forEach((element) {
    element.forEach((key, value) {
      stdout.write("$value\t");
    });
    print("");
  });

}