import 'dart:io';

void main()
{
  stdout.write("Enter the Lenghth of Array :");
  int n=int.parse(stdin.readLineSync()!);

  List<int> l= List.generate(n, (i) {
    stdout.write("Enter l[$i] :");
    return int.parse(stdin.readLineSync()!);
  });

  int tmp=0;

  l.forEach((element) {
    if(element > tmp )
    {
        tmp=element;
       // print("l[${l.indexOf(element)}] : $element");
    }
  });

  print("Largest Number is : $tmp");

}