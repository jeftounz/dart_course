//Clases y atributos (POO)

void main()
{
  //instancia de una clase 
  Alumno Jesus=Alumno(nombre: "Jesus",apellido:"Gonzalez",edad: 23,telefono: "964446464",calificaciones: [18,17,18,18]);
  print(Jesus.obtenerPromedio());
  Alumno Jose=Alumno(nombre: "Jose",apellido: "Montaño",edad: 25,telefono: "+58454521545",calificaciones: [17,18,19,15]);
  print(Jose.obtenerPromedio());
  
}

//Esto es una clase
class Alumno{
  //Atributos
  String nombre;
  String apellido;
  int edad;
  String telefono;
  List<double> calificaciones;


  //Metodos

  //Constructor
  Alumno({this.nombre="",this.apellido="",this.edad=0,this.telefono="",this.calificaciones=const[]});
  
  obtenerPromedio()
  {
    print("El promedio del alumno ${this.nombre} es de ${this._calcularPromedio()} sobre 20.");
  }
  //Modificador de acceso (_), para poder encapsular los datos del objeto
  _calcularPromedio()
  {
    return this.calificaciones.reduce((value, element) => value+element)/this.calificaciones.length;
  }
}