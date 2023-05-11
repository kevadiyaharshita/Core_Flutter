/*
Write a Dart program to print full name by
getting first name and last name by user input.
*/

import 'dart:io';

void main()
{
    print("Enter Your Frist Name :");
    String? f_name = stdin.readLineSync();


    print("Enter Last Name :");
    String? l_name = stdin.readLineSync();

    print("Full Name : $f_name $l_name");

}

