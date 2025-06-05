void main(){
  var Leon = Animal("Diego",1);
  print(Leon.dev_name);
  Leon.description();

  var Leon2 = Felinos("Diego2", 2, 12);
  Leon2.dev_name;
  Leon2.description();
  Leon2.set_name="Nuevo León";
  print(Leon2.dev_name);


}

//Clase Padre
class Animal{
  String nombre;
  int id;

  Animal(this.nombre,this.id);
  String get dev_name => nombre;
  set set_name(String nombre1) => nombre = nombre1;

  void description(){
    print("Hola: ${nombre}");
  }
}

//Clase Hijo
class Felinos extends Animal{
  int edad;

  Felinos(String nombre,int id , this.edad):super(nombre,id);

  @override
    void description(){
    print("Hola felino: ${nombre}");
  }

}