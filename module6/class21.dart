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
  
  Profesor pedro=Profesor();
  pedro.setNombre="Pedro";
  pedro.setRfc="cedula1234";

  pedro.obtenerRfc();

  //La clase abstracta no se construye , sino que se utiliza para heredar a sus clases hijas
  //atributos y metodos , es decir ,no podemos escribir el siguiente codigo:
  // Persona persona = Persona();

}

//Esta es una clase interfaz
class Escuela{
  bienvenida()
  {
    
  }
}

//El uso de "implements" es para heredar interfaces
//Clase padre
abstract class Persona implements Escuela{
  String _nombre="";
  String _apellido="";
  int _edad=0;
  String _telefono="";

  get getNombre=>this._nombre;
  set setNombre(String nombre)=>this._nombre=nombre;
}


//Esto es una clase
class Alumno extends Persona{
  //Atributos publicos:
  bool tieneBeca=false;
  //Atributos _privados:
  
  List<double> _calificaciones=const[];

  //Getters y setters
  
  List<double> get getCalificaciones=> this._calificaciones;
  set setCalificaciones(List<double> calificaciones)=>this._calificaciones=calificaciones;
  //Metodos
  //Constructor
  
  
  obtenerPromedio()
  {
    bienvenida();
    print("El promedio del alumno ${this._nombre} es de ${this._calcularPromedio()} sobre 10.");
  }
  //Modificador de acceso (_), para poder encapsular los datos del objeto

  _calcularPromedio()
  {
    return this._calificaciones.reduce((value, element) => value+element)/this._calificaciones.length;
  }

  @override //Esto es una interfaz 
  bienvenida() {
    // TODO: implement bienvenida
    print("Bienvenido alumno ${this._nombre}");
  }
}

//El extend es para heredad atributos y metodos de persona, y el with para utilzar un mixing de validaciones
class Profesor extends Persona with Validaciones
{
  
  //Atributos _privados:
  String _rfc="";

  //Getters y setters

  get getRfc=> this._rfc;
  set setRfc(String rfc)=>this._rfc=rfc;
  //Metodos
  //Constructor
  
  
  obtenerRfc()
  {
    bienvenida();
    if(_rfc.isNotEmpty)
    {
      print("El profesor $_nombre tiene RFC que es $_rfc");
    }else
    {
      print("El profesor $_nombre  NO tiene RFC que es $_rfc");
    }

    validarRFChomoclave(this._rfc);
  }
  
      @override //Esto es una interfaz 
  bienvenida() {
    // TODO: implement bienvenida
    print("Bienvenido Profesor ${this._nombre}");
  }
}

//Es para recibir atributos y metodos de n clases
mixin Validaciones{

  validarRFChomoclave( String rfc)
  {
    //Puedes colocarlo asi
    /*if(rfc.length>=10)
    {
      print("RFC con homoclave");
    }else
    {
      print("RFC sin homoclave");
    }*/
  //Oh asi 
    print((rfc.length>10)?"RFC con homoclave":"RFC sin homoclave");
    
  }

}