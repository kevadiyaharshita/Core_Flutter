import 'dart:io';

class Employee
{
  int? id;
  String? name;
  double? salary;
  int? age;

  void setData(int id,String name,double salary)
  {
      this.id=id;
      this.name=name;
      this.salary=salary;
  }

  void getData()
  {
    print("--------------------------------------");
    print("Id     : $id");
    print("Name   : $name");
    print("Salary : $salary");
    print("--------------------------------------");
  }
}

void main()
{
  int n;
  int id;
  String name;
  double salary;
  stdout.write("How Many Employees :");
  n=int.parse(stdin.readLineSync()!);

  List emp=List.generate(n, (index) => Employee());

  emp.forEach((element) {
    print("Employee :${emp.indexOf(element)}/$n");

    stdout.write("Enter ID :");
    id=int.parse(stdin.readLineSync()!);

    stdout.write("Enter Name :");
    name=(stdin.readLineSync()!);

    stdout.write("Enter Salary :");
    salary=double.parse(stdin.readLineSync()!);

    element.setData(id,name,salary);
  });
  int ch;
  do{
    print("---------------------------------");
    print("Press 1 for Search of Index :");
    print("Press 2 for Get All Employee Data");
    print("Press 0 for Exit");

    stdout.write("\nEnter Your Choice :");
    ch=int.parse(stdin.readLineSync()!);

    switch(ch)
    {
      case 1:
        stdout.write("Enter ID :");
        int i=int.parse(stdin.readLineSync()!);

        emp.forEach((element) { 
          if(element.id==i)
          {
            element.getData();
          }
        });

      break;

      case 2:
        emp.forEach((element) { 
          element.getData();
        });
      break;
      case 3:
       exit(0);
      break;

      default :
      print("Invalid choice...");
      break;
    }
  }while(ch!=0);

  
  

  for(Employee e in emp)
    {
      e.getData();
    }
}