void main(){
  
  final pokemon = {
    'name':'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('sprites: ${pokemon['sprites']}');
  
//   Esta cosa no andaba, le pedi a chatgpt que me corrija y me recomendo lo que esta abajo
  
//   print('front: ${pokemon['sprites'][1]}');
//   print('Back: ${pokemon['sprites'][2]}');
  
   // Realiza un casting a Map<int, String> para indicar el tipo del mapa de sprites
  print('front: ${(pokemon['sprites'] as Map<int, String>)[1]}');
  print('Back: ${(pokemon['sprites'] as Map<int, String>)[2]}');
}