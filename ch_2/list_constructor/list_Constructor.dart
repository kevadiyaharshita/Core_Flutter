import 'dart:io';
void main()
{
  //by default grawable : true
 // List<int> a = List.generate(5,(i) => (i+1)*11, growable : false);

 //by default grawable : false you can not add or remove data only update elements
 //List<int> a = List.filled(5,100);
 //a[1]=500;

  int n;
  stdout.write("Emter the length : ");
  n=int.parse(stdin.readLineSync()!);

  List l =List.generate(n,(i){
    stdout.write("Enter l[$i] :");
    return int.parse(stdin.readLineSync()!);
  });

  List a=List.from(l);
  print(a);
}