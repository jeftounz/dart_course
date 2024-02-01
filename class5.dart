
import 'dart:async';

void main(){

  /*CONCATENACION E INTERPOLACION*/
  
  int edad=20.2.toInt(); //De flotante oh double a entero
  edad=int.parse("25"); //De string a entero
  double precio=double.parse("55.1");

  int codigoPostal=123456;

  String name=300.toString(); //De numero a string
  bool esCliente=false;

  print("Hola"+name);//CONCATENACION

  print("Hola ${name.length}");//INTERPOLACION
  
  
}