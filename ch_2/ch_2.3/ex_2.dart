/*
Writ a Dart Program to print all uniqu lmnts
from a List.

Elmnts ma!  runant whil ntring into
a List. Usr can onl! ntr lmnts of String
atat!p.
*/

import 'dart:io';

void main()
{
  stdout.write("How Many Name You Want To Enter :");
  int n=int.parse(stdin.readLineSync()!);


  List<String> name=List.generate(n, (i){
    stdout.write("Enter Name[$i] :");
    return stdin.readLineSync()!;

  });
  print("All Unique Name :");
  Set s=name.toSet();

  print(s.toList());

}