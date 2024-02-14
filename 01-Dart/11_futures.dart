void main(){
  print('Inicio');
    
  
  httpGet('https://url').then( (value){
    print(value);
  }).catchError((error){
    print(error);
  });
  
  
  print('Fin');
}


Future<String> httpGet(String url){
  
  return Future.delayed(const Duration(seconds: 1), (){
    
    throw 'Error en la peticion'; //Esto hace que no se cumpla la promesa
    
//     return 'Respuesta de la peticion http';
    
  });
}