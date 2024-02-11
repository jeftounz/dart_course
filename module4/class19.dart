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

  //RECORRIDO DE UN MAP
  //Primera forma , su llave y su valor
  for(String key in datos.keys)
  {
    print("Key : $key Valor:${datos[key]}");
  }
  //Segunda forma, se imprime los valores
  for(String value in datos.keys)
  {
    print("Valor:$value");
  }
  //Tercera forma, se obtiene llave y valor utilizando algo llamado mapEntry
  for(MapEntry mapEntry in datos.entries)
  {
    print("Valor: ${mapEntry.value}");
  }
  //Cuarta forma, utilizando un forEach
  datos.forEach((key, value)=>print("key $key valor $value"));

}