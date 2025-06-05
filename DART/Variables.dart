void main(){

  var edad = 10;
  var nombre = "Juan";
  var temperatura = 19.2;
  var estado = true;

  print(nombre);

  int     numero = 1;
  double  decimales = 1.2;
  String  texto = "Hola mundo"; 
  bool    estado2 = true;

  // Null Safety
  int? numero2 = null ;
  print(numero2);

  numero2 = 2;
  print(numero2);
  
  // Final
  final numero3;
  numero3 = 4;
  print(numero3);

}

String nombre(){
  String nombre = "José";
  print(nombre);
  return nombre;
}