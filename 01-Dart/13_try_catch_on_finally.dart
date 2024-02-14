void main() async {
  print('Inicio');
    
  
  try{
      final value = await httpGetAsync('http;//url');
    
      print('Exitoso: $value');
    
  }on  Exception catch(error) {
    
    print('Tenemos una excepcion: $error');
    
  }catch(error){
    
    print('OOPS!: $error');
    
  }
  
  finally{
    
    print('Fin try y catch');
      
  }

  
  print('Fin');
}


// Uso de async y await: Una funcion async siempre devuelve un Future
Future<String> httpGetAsync(String url)async{
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No hay parametros en el url');
  
//   throw 'Error en la peticion con async y await';
  
//   return 'Tenemos un valor de la peticion con async y await';
    
  
}
