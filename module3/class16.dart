//EL FOR EACH
void main()
{
  String name="Jesus Gonzalez";
  //Es como un for , pero sin preocuparse por los indices y el numero de elemenetos 
  for(int character in name.codeUnits)
  {
    print(String.fromCharCode(character));
  }
}