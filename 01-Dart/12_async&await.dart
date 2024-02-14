void main() async {
  print('Inicio');
    
  
  httpGet('https://url').then( (value){
    print(value);
  }).catchError((error){
    print(error);
  });
  
  try{
      final value = await httpGetAsync('http;//url');
      print(value);
  }catch(error){
    print('Tenemos un error: $error');
  }

  
  print('Fin');
}


// Funcion planta
Future<String> httpGet(String url){
  
  return Future.delayed(const Duration(seconds: 1), (){
    
    throw 'Error en la peticion comun'; //Esto hace que no se cumpla la promesa
    
//     return 'Respuesta de la peticion http';
    
  });
}

// Uso de async y await: Una funcion async siempre devuelve un Future
Future<String> httpGetAsync(String url)async{
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw 'Error en la peticion con async y await';
  
  // return 'Tenemos un valor de la peticion con async y await';
    
  
}
