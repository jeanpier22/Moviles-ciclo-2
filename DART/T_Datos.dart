void main(){


// Listas
// No estrictos con los tipos de varibale a ingresar
var lista = ["Juan","Pedro","Luis",23];
print(lista[1]);
print(lista);

lista.add('Lucio');
print(lista);


// Estrictos con los tipos de varibale a ingresar
List<double> lista2 = [22,23];
print(lista2);


// Mapa
var persona = 
  {
    "nombre" : "Juan",
    "edad"   : 23
  };

print(persona);

// Estrictos con los tipos de varibale a ingresar
var perritos = Map<String, String>();
perritos['perrito1']='Firulay';
perritos['perrito2']='Boby';

print(perritos);


// No estrictos con los tipos de varibale a ingresar
var perritos2 = Map();
perritos2['name']='Firulay';
perritos2['edad']=5;

print(perritos);

// Crear un mapa en blanco agregando sus datos: nombre, apellido, edad, correo
// Crear una lista en blanco agregando los mismos elementos
}