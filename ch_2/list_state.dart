/*
Write a Dart program to create a list which
contains all Indian states.
Add all indian states in list by user input.
After that print all states using any type of loop.
*/

import 'dart:io';

void main()
{
  int n;
  stdout.write("How many states in india :");
  n=int.parse(stdin.readLineSync()!);
  List<String> state = [];
  for(int i=0;i<n;i++)
  {
    stdout.write("Enter ${i+1} State :");
    state.add(stdin.readLineSync()!);
  }


  print("-----------------------------------");
  print("\tSTAES OF INDIA");
  print("-----------------------------------");

  state.forEach((element) {print("$element"); });
  
}