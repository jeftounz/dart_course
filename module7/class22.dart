//PROGRAMACION ASÍNCRONICA
//Permite que sucedan varias cosas al mismo tiempo, mientras se esta ejecutando objetos
void main() async{
  inicio();
  //El proposito de then , nos devuelve el resultado de nuestra funcion future
  accion().then((String value)
  {
    print("Este es el mensaje $value");
  }).whenComplete((){ //El whenComplete es cuando se termina de ejecutar con exito la funcion asyncrona
    print("Se termino la funcion asyncrona");
  }).catchError((error){ //El catchError nos da un reporte sobre algun error de la ejecucion de la funcion future
    print("Este es el mensaje de error : ${error.toString()}");
  });
  //Existe el await para poder hacer peticiones https, y requieren esperar (respuesta por parte del servidor)
  String value=await accion();
  print("Este es el valor $value");
  PruebaTryCatch();
  fin();
}

inicio()
{
  print("Inicio");
}
//Este es una funcion asincronica 
Future<String> accion()async
{
  return Future.delayed(Duration(seconds: 4),()=>"Listo....");
}

PruebaTryCatch() async
{
  try
  {
  String value=await accion();
  }catch(error)
  {
    print("Este es el error de la conexion: ${error.toString()}");
  }
}

fin()
{
  print("Fin");
}