//1. WAP to take a list using named parameter and return sum of all elements of list.

import 'dart:io';

class A{
  List<int> l=List.empty(growable: true);
      int Sum_of_Elements({required List<int> l})
      {
        int sum=0;
        

        l.forEach((element) {
          sum=sum+element;
        });
       // print("Sum Of All Elements is : $sum");
       return sum;
      }


  }


void main()
{
  stdout.write("Enter Length :");
  int n=int.parse(stdin.readLineSync()!);
  List<int> l=List.generate(n, (index) {
  stdout.write("Enter Elements Of $index/$n :");
  return int.parse(stdin.readLineSync()!);
  });
  
  A o1=A();

  int sum=o1.Sum_of_Elements(l: l);

  print("Sum Of All Elements : $sum");
}


