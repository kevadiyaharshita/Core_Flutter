import 'dart:convert';
import 'dart:io';

import 'Student_class.dart';

void main()
{
    stdout.write("How Many Student :");
    int n=int.parse(stdin.readLineSync()!);
    String tmp="a";

    List<Student> s=List.generate(n, (index) => Student());

    s.forEach((element) {
      element.setData();
    });

  

    Student s1 = Student();

    
    int ch=0;

    do{
        print("Press 1 for show Highest Percantage ");
        print("Press 2 for show Lowest Percentage");
        print("Press 3 for show Student Details With Alphabetic order");
        print("Press 4 for Show All Student Details :");
        print("Press 0 for Exit.");
        print("---------------------------------------");
        stdout.write("Enter Your Choice :");
        ch=int.parse(stdin.readLineSync()!);
        print("---------------------------------------");

        double per,tmp=0;
        
        switch(ch)
        {
          case 1:
             
              s.forEach((element) {
                per=element.getper;

                if(per>tmp)
                {
                  tmp=per;
                  s1=element;
                }
              });

              s1.getData();

          break;

          case 2:
            tmp=100;
            s.forEach((element) {
              per=element.getper;
              if(per<tmp)
              {
                tmp=per;
                s1=element;
              }
            });

            s1.getData();
          break;

          case 3:
                  String first_alphabet;
                  for(int j=65;j<=90;j++)
                  {
                    for(int i=0;i<n;i++)
                    {
                      first_alphabet=s[i].getName;
                      int aci=first_alphabet.codeUnitAt(0);
                     
                       if(aci==j)
                       {
                          s[i].getData();
                       }
                    }
                  }

                  for(int j=97;j<=122;j++)
                  {
                    for(int i=0;i<n;i++)
                    {
                      first_alphabet=s[i].getName;
                      int aci=first_alphabet.codeUnitAt(0);
                     
                       if(aci==j)
                       {
                          s[i].getData();
                       }
                    }
                  }
                
              
          break;

          case 4:
              s.forEach((element) {
                element.getData();
              });
          break;

          case 4:
              exit(0);
          break;

          default :
             print("Invalid Choice...");
          break;
        }

    }while(ch!=0);

    for (Student stud in s) {
      stud.getData();
    }
}

