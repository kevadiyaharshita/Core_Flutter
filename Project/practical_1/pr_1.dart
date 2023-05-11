import 'dart:io';

void main()
{
  stdout.write("Enter the Lenghth of Array :");
  int n=int.parse(stdin.readLineSync()!);

  List<int> l= List.generate(n, (i) {
    stdout.write("Enter l[$i] :");
    return int.parse(stdin.readLineSync()!);
  });

  l.forEach((element) {
    if((element) < 0)
    {
        print("l[${l.indexOf(element)}] : $element");
    }
  });
}