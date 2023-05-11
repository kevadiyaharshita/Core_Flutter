/*
 Write a Dart program to print multiplication table
of user given number.
*/

import 'dart:io';

void main()
{
    print("Enter Any Number :");
    int n=int.parse(stdin.readLineSync()!);
    print("Multiplication table of $n :");
    for(int i=1;i<=10;i++)
    {
        print("$n * $i = ${n*i}");

    }

}