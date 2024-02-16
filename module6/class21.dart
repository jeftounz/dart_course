//Clases y atributos (POO)

void main()
{
  //instancia de una clase 
    Alumno jesus = Alumno();
  jesus.setNombre = "Jesus";
  jesus.setCalificaciones = [9.0, 8.5, 7.0]; // Agrega calificaciones
  jesus.obtenerPromedio(); // Imprime el promedio

  Alumno jose = Alumno();
  jose.setNombre = "Jose";
  jose.setCalificaciones = [8.0, 7.5, 6.5]; // Agrega calificaciones
  jose.obtenerPromedio(); // Imprime el promedio
  
}

//Esto es una clase
class Alumno{
  //Atributos publicos:
  bool tieneBeca=false;
  //Atributos _privados:
  String _nombre="";
  String _apellido="";
  int _edad=0;
  String _telefono="";
  List<double> _calificaciones=const[];

  //Getters y setters
  get getNombre=>this._nombre;
  set setNombre(String nombre)=>this._nombre=nombre;
  List<double> get getCalificaciones=> this._calificaciones;
  set setCalificaciones(List<double> calificaciones)=>this._calificaciones=calificaciones;
  //Metodos
  //Constructor
  
  
  obtenerPromedio()
  {
    print("El promedio del alumno ${this._nombre} es de ${this._calcularPromedio()} sobre 10.");
  }
  //Modificador de acceso (_), para poder encapsular los datos del objeto
  _calcularPromedio()
  {
    return this._calificaciones.reduce((value, element) => value+element)/this._calificaciones.length;
  }
}