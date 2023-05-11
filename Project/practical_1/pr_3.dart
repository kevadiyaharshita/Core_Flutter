/*
  Write a program to insert update delete and view operationas on the elements in an 
  array using manu drivven programming approach.
*/


import 'dart:io';

void main()
{
    List<int> l =[];
    int ch;
    int len;

    do{
        int indx=0,elem=0;
        len=l.length;

        if(len==0)
        {
          print("========================");
          print("  Your Array is Empty.");
          print("========================");
        }
        print("Press 1 for Insert ");
        print("Press 2 for Update ");
        print("Press 3 for Delete ");
        print("press 0 for exit ");
        print("-----------------------");
        stdout.write("Enter Your Choice :");
        ch= int.parse(stdin.readLineSync()!);
        print("------------------------");
       /*  Process.start('cls', [], runInShell: true).then((process) {
        stdout.addStream(process.stdout);
        stderr.addStream(process.stderr);
        });*/
        print("Your list :");
        print(l);
        switch(ch)
        {
            case 1:

                  if(len==0)
                  {
                      int tmp=len;
                    while(tmp==0)
                    {
                    tmp=1;
                    stdout.write("Plz...Enter The Index Value Zero(0) :");
                    indx=int.parse(stdin.readLineSync()!);
                    if(indx != 0)
                    {
                      tmp=0;
                    }
                    
                    }
                  }
                  else 
                  {
                    int tmp1=0;
                    do{
                        stdout.write("Enter The Index  :");
                        indx=int.parse(stdin.readLineSync()!);

                        if(indx >= 0 && indx <= len)
                        {
                            tmp1=1;
                        }
                        else{
                          print("Invalid index..");
                        }
                       }while(tmp1==0);
                  }
                    
                  


                  stdout.write("\n Enter The Elements  :");
                  elem=int.parse(stdin.readLineSync()!);
                  l.insert(indx,elem);
                  print(l);
                  break;
            
            case 2:
                  
                  int tmp1=0;
                    do{
                        stdout.write("Enter The element's Index You Want To Change :");
                        indx=int.parse(stdin.readLineSync()!);

                        if(indx >= 0 && indx < len)
                        {
                            tmp1=1;
                        }
                        else{
                          print("Invalid index..");
                        }
                       }while(tmp1==0);

                       stdout.write("\n Enter The Elements  :");
                       elem=int.parse(stdin.readLineSync()!);
                       l[indx]=elem;
                       print(l);
                  break;
            case 3:
                  stdout.write("Enter The Elements Yoy Want To Delete :");
                  elem=int.parse(stdin.readLineSync()!);

                  l.remove(elem);
                   print(l);
                  break;
            case 0:
                  exit(0);
                  break;
            default :
                  print("Invalid Choice...");
                  break;

              

        }
        


    }while(ch!=0);
}
