void main(){

  /*Dart es fuertemente tipado*/
  /*Tenemos las variables primitivas y estaticas*/ 
  int edad=20;
  double precio=25.30;

  int codigoPostal=123456;

  String name="Marines";
  bool esCliente=false;
   /*Tenemos las variables dinamicas*/ 
  dynamic puntos=2000;//En dinamic se puede modificar el valor (puede ser cualquiera)
  var puntos1=2000;//Var es para reservar una variable de cualquier tipo en base a su asignacion
  //Es decir si puntos1 guarda un numero entero , permanecera como un numero entero
  final puntos2=[20,11,13]; //No podremos modificar su valor pero si se podra crear listas
  puntos2.add(5);
  const PUNTOS3="Constante"; //Esta es para definir constantes y es 100% inmutable
  
}