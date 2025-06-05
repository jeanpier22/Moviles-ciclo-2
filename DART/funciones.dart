void main(){
  
  String name = nombre();
  print(name);

  imprimir();

  int sum = suma(4,4);
  print(sum);
  
  var perritos = mapa("perrito1", "boby");
  print(perritos);
}



String nombre(){
  return "Alisson";
}

int suma(int a, int b){
  return a+b;
}

void imprimir(){
  print("Hola mundo");
}


Map<String, String> mapa(String clave, String valor){
  var perritos = Map<String, String>();
  perritos[clave]=valor;
  return perritos;  
}