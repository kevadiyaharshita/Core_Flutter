/*
Write a Dart program to find a Simpl
Interest.
*/

import 'dart:io';

void main()
{
  print("Enter Principal Amount :");
  int amt=int.parse(stdin.readLineSync()!);

  print("Enter Rate : ");
  double rate=double.parse(stdin.readLineSync()!);

  print("Simpel Intrest Is : ${(amt*rate)~/100}");

}