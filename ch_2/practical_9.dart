/*
Write a Dart program to create a calculator using
switch case.
*/

import 'dart:io';

void main()
{
  print("Enter Value Of A :");
  int a=int.parse(stdin.readLineSync()!);

   print("Enter Value Of B :");
  int b=int.parse(stdin.readLineSync()!);
  int ch;
  do
  {
       print("Press 1 For Addition ");
       print("Press 2 For Substraction ");
       print("Press 3 For Multiplication ");
       print("Press 4 For Division ");
       print("Press 0 For Exit ");

       ch=int.parse(stdin.readLineSync()!);

       switch(ch)
       {
            case 1:
                  print("The Addition is : ${a+b}");
                  break;
            case 2:
                  print("The Substraction is : ${a-b}");
                  break;
            case 3:
                  print("The Multiplication is : ${a*b}");
                  break;
            case 4:
                  print("The Division is : ${a ~/ b}");
                  break;
            case 0:
                  exit;
                  break;
            default :
                  print("Invalid Choice....!");
                        

       }

  }while(ch!=0);


}