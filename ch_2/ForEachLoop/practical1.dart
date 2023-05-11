import 'dart:io';
void main()
{
  int n;
  stdout.write("Emter the length : ");
  n=int.parse(stdin.readLineSync()!);

  List l =List.generate(n,(i){
    stdout.write("Enter l[$i] :");
    return int.parse(stdin.readLineSync()!);
  });

 // l.forEach( (val) => print("l[${l.indexOf(val)}] : $val"));

 l.forEach((element) {print("l[${l.indexOf(element)}] :$element");});
}