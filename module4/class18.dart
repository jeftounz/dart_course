//Listas 
void main()
{
  //Lista heterogenea
  List colores=["Azul","Verde","Rosa","Morado",1];
  print(colores[3]);

  //Lista homogenea
  List<String> colores2=["Jesus","daniel","Gonzalez","Diego","Evies"];
  colores2.add("Gabriel");
  print(colores2); 

  //Como recorrer la lista

  for(int i=0; i<colores.length;i++)
  {
    print(colores[i]);
  }

  
  for(String color in colores2){
    print(color);
  }
  
  colores2.forEach((String color)=>print(color));
}