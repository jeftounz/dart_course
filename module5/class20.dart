//Funciones 

void main()
{
  String recibirData;
  bienvenida("Cristian de Jesus","Nuevo");
  TiposDatos("Dato1",2);
  recibirData=Devolver();
  print("Cristian de jesus $recibirData");
}
//Las funciones tienen parametros
bienvenida(String nombre, String tipo)
{
 print("$nombre bienvenido , al curso de dart de CODIGOFACILITO");

 switch(tipo)
 {
    case "Nuevo":
    descuento(tipo,10);
    break;

    case "Viejo":
    descuento(tipo,30);
    break;
 }
}


descuento(String tipo,int descuento)
{
  print("Por ser un usuario $tipo te ofrecemos un descuento de $descuento %");
}
//Los parametros [] son opcionales posicionales
//Los parametros {} son opcionales con nombres
TiposDatos(String tipo,[int])
{
  print("$tipo+$int");
  
}

//Devolver datos
Devolver()
{
  String despedida="nos vemos luego!";

  return despedida; 
}