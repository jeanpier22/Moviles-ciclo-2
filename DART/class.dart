void main(){
  var Alumno1 = Alumno_Public_Class("Juan", 2);
  print(Alumno1.dev_name);
  print(Alumno1.dev_age);

  var Alumno2 = Alumno_Private_Class("Pedro", 3);
  print(Alumno2._age);
  print(Alumno2._name);
}


class Alumno_Public_Class{
  String name;
  int age;

  // 🔨 Constructor
  Alumno_Public_Class(this.name,this.age);

  // 📤 Getter (para leer datos)

  //String get dev_name{
  //  return name;
  //}

  String get dev_name => name;
  //int get dev_age{
  //  return age;
  //}

  int get dev_age =>age;


  // 📤 Setter (para modificar los datos)

  //void set set_name(String name1){
  //  name = name1;
  //}

  set set_name(String name1) => name = name1;

  //void set set_age(int age1){
  //  age = age1;
  //}

  set set_age(int age1) => age = age1;
}


class Alumno_Private_Class{
  String _name;
  int _age;

  // 🔨 Constructor
  Alumno_Private_Class(this._name,this._age);

  // 📤 Getter (para leer datos)

  //String get dev_name{
  //  return name;
  //}

  String get dev_name => _name;
  //int get dev_age{
  //  return age;
  //}

  int get dev_age =>_age;


  // 📤 Setter (para modificar los datos)

  //void set set_name(String name1){
  //  name = name1;
  //}

  set set_name(String name1) => _name = name1;

  //void set set_age(int age1){
  //  age = age1;
  //}

  set set_age(int age1) => _age = age1;
}