
void main(){

  /*Utilidades de strings*/
  String name="Jesus Gonzalez";

  print(name.isEmpty);//El .isEmpty es para saber si la cadena esta vacia
  print(name.toLowerCase());//Todas seran minusculas
  print(name.toUpperCase());//Todas seran mayusculas
  print(name.substring(8,11));//Me dice que caracteres mostrar en el string de acuerdo a su pocision
  print(name.length);//Me dice la longitud del string
  print(name.replaceAll("Jesus", "Daniel"));//Remplaza un grupo de caracteres
}