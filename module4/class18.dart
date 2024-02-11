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


  //Metodos utiles de una lista
  //.sublist(inidice1,indice2) creamos una sublista a partir de una primera posicion hasta una ultima posicion
  List<String> colors=["Azul","Verde","Rojo","Amarillo","Morado"];
  print(colors.sublist(2,4));
  //.shuffle acomoda la lista de forma aleatoria
  colors.shuffle();
  print(colors);
  //Tenemos el metodo .reversed que coloca la lista a la inversa
  print(colors.reversed);
  //Tenemos el metodo .where que nos permite buscar un elemento en base a una condicion
  print(colors.where((String color) => color=="Morado"));

  List<int> nums=[1,2,3,4,5];
  //El metodo .reduce (solo funciona con listas con numeros), hace una sumatoria total de todos los elementos de la lista
  print(nums.reduce((value, element)=>value+element));
  //Tenemos el metodo .fold que es similar , pero con la pequeña diferencia que puedes agregar un valor inicial para sumar 
   var resultado=nums.fold(10,(value, element)=>value+element);
  print(resultado);
}