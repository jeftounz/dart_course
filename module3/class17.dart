//WHILE Y DO WHILE
void main()
{
  int edad=13;
  bool esMenor=false;
  //Ciclo while
  while(edad<=18)
  {
    print("Tiene $edad");
    edad++;
  }

  edad=0;
  //Ciclo do while
  do{
    if(edad>=18)
    {
      print("----Es mayor $edad----");
      esMenor=false;
    }else{
      print("Tiene $edad");
      esMenor=true;
    }
    ++edad;

  }while(esMenor);

}