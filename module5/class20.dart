//Funciones 

void main()
{
  
  bienvenida();
  descuento();
  
}

bienvenida()
{
 print("Bienvenido usuario, al curso de dart de CODIGOFACILITO");
}

descuento()
{
  int descuento =50;
  int precio=1400;
  double aplicarDescuento=(precio*descuento)/100;
  double precioTotal=precio-aplicarDescuento;

  print(precioTotal);
}