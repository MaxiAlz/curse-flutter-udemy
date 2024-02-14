void main(){
  
  saludarTodos();
  
  print(greetPerson(name: 'Maxi',message: 'Que ondera'));
}

String saludarTodos()=> 'Hola pa';

int addTonumbers(int a, int b)=> a + b;

//aca b es opcional y por defecto va a ser 0 si no se envia un valor
int addToNumbersOptional(int a,[int b=0]){
  
  // b??=0
  return a + b;
}


// en esta funcion, el parametro name es requerido, es un string y puede enviarse en cualqueri orden
// message es un string opcional, que si no se envia tendra un valor por defecto
String greetPerson({required String name,  String message = 'Hola,'}){
  
  return '$message $name ';
  
}