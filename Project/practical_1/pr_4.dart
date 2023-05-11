/*
Write a dart program to addition of two matrices of dimension 3*3
*/

import 'dart:io';

void main()
{
 // List a=[[1,2,3],[4,5,6],[7,8,9]];

 // List b=[[11,22,33],[44,55,66],[77,88,99]];
  int r,c;
  stdout.write("Enter the Number Of Raw : ");
  r=int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number Of Column : ");
  c=int.parse(stdin.readLineSync()!);
  print("Enter The Elements for First Array");
 List<List<int>> a=List.generate(r, (ri){
  return List.generate(c, (ci){
    stdout.write("Enter a[$ri][$ci] :");
    return int.parse(stdin.readLineSync()!);
  });
 });
  print("Enter The Elements for Second Array");
 List<List<int>> b=List.generate(r, (ri){
  return List.generate(c, (ci){
    stdout.write("Enter b[$ri][$ci] :");
    return int.parse(stdin.readLineSync()!);
  });
 });
  for(int i=0;i<r;i++)
  {
      for(int j=0;j<c;j++)
      {
        print("${a[i][j]} + ${b[i][j]} = ${a[i][j]+b[i][j]}");
      }
      
  }
}