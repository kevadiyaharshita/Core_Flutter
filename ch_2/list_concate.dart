/*
Write a Dart program to concate list element
value with hello.
For exmple,
input: [1, 2, 3]
output: [1 hello, 2 hello, 3 hello]
*/

import 'dart:io';

void main()
{
  List l=[];

  for(int j=0;j<3;j++)
  {
    stdout.write("Enter l[$j] :");
    int a=int.parse(stdin.readLineSync()!);
    print("\n");
    l.add(a);
  }
  stdout.write("[");
  for(int i=0;i<l.length;i++)
  {
    if(i==(l.length-1))
    {
        stdout.write(" ${l[i]} hello ");
    }
    else{
      stdout.write(" ${l[i]} hello, ");
    }
    
  }
  stdout.write("]");
}