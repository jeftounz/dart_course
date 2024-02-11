//La estructura de dato MAP
void main()
{
  Map datos={"nombre":"Jesus",
  "Apellido":"Gonzalez",
  "Telefono":"04149999999"};
  print(datos);
  print(datos["telefono"]);
  //Si quiero eliminar un elemento 
  datos.remove("nombre");
  print(datos);
  datos["Apellido"]="Castellanos";
  datos["email"]="correo@example.com";
  print(datos);
}