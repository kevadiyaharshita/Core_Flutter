/*
  sum of all Elements .
  sum of specific raw
  sum of specific column
  sum of diagonal elements
  sum of antidiagonal elements
  press 0 for exit
*/


import 'dart:io';

void main()
{
  int r,c;
  stdout.write("Enter the Number Of Raw : ");
  r=int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number Of Column : ");
  c=int.parse(stdin.readLineSync()!);
  List<List<int>> l=List.generate(r, (ri) {
    return List.generate(c,(ci) {
      stdout.write("Enter l[$ri][$ci] :");
      return int.parse(stdin.readLineSync()!);
    });
  });
  int ch=0;
  do{
      print("Press 1 for sum of all Elements");    
      print("Press 2 for sum of specific raw");  
      print("Press 3 for sum of specific column");  
      print("Press 4 for sum of diagonal elements");  
      print("Press 5 for sum of antidiagonal elements");  
      print("Press 0 for Exit");  

      print("-------------------------------");
      stdout.write("Enter Your Choice :");
      ch=int.parse(stdin.readLineSync()!);
      print("-------------------------------");
      int sum=0;
      
      for(int i=0;i<3;i++)
      {
         for(int j=0;j<3;j++)
         {
             stdout.write(" ${l[i][j]} ");
         }
         print("");
       }
       print("\n");
      switch(ch)
      {
        case 1:
            /* int s=0;
              l.forEach((element) {
                //int tmp=int.parse(element);
                s=s+element.toint();
                
                
              });*/

              for(int i=0;i<3;i++)
              {
                for(int j=0;j<3;j++)
                {
                  sum=sum+l[i][j];
                }
              }
              print("Sum Of All Elements Is :$sum");
              print("-------------------------------");
              break;
        case 2:
              sum=0;
              stdout.write("Enter The Raw :");
              r=int.parse(stdin.readLineSync()!);
              if(r>=0 && r<3)
              {
                  for(int j=0;j<3;j++)
                  {
                    sum=sum+l[r][j];
                  }
                  print("sum of Raw Number $r is : $sum");
              }
              else 
              {
                print("Invalid Raw Number");
              } 
              break;
        case 3:
              sum=0;
              stdout.write("Enter The Column :");
              c=int.parse(stdin.readLineSync()!);
              if(c>=0 && c<3)
              {
                  for(int j=0;j<3;j++)
                  {
                    sum=sum+l[j][c];
                  }
                  print("sum of Column Number $c is : $sum");
              }
              else 
              {
                print("Invalid Column Number");
              } 
              break;
        case 4:
              for(int i=0;i<3;i++)
              {
                for(int j=0;j<3;j++)
                {
                  if(i==j)
                  {
                     sum=sum+l[i][j];
                  }
                 
                }
              }
              print("Sum Of All Diagonal Elements Is :$sum");
              print("-------------------------------");
              break;
        case 5:
              for(int i=0;i<3;i++)
              {
                for(int j=0;j<3;j++)
                {
                  if(i+j==2)
                  {
                     sum=sum+l[i][j];
                  }
                 
                }
              }
              print("Sum Of All Anti-Diagonal Elements Is :$sum");
              print("-------------------------------");
              break;
        case 0:
              exit(0);
             // break;
        default :
              print("Invalid Choice....");
              break;
      }
  }while(ch !=0);
}