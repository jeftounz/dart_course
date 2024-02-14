//Funciones 

void main()
{
  
  bienvenida("Cristian de Jesus","Nuevo");
  
  
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