void main()
{
  List<int> l=[1,2,3,4];

  List s=l.map((e) {
    return e*e;
  }).toList();

  print(s);
}