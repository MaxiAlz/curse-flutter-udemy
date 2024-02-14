void main(){
  
  final numbers = [1,2,3,4,5,5,5,6,7,7,7,10];
    
    print('List original: $numbers');
  
  print('List original: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Reverse: ${numbers.reversed}');
  
  print('-----------------Interables------------------');
  
  final reversedNumbers = numbers.reversed;
  print('Interables: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}'); // paso el interable a lista de vuelta
  print('Set: ${reversedNumbers.toSet()}'); //quita los valores duplicados
  
  
  final numberGreaterThanFive = numbers.where( (int num){
    return num>5;
  } );
  
  print('>5: $numberGreaterThanFive');
  print('>5 seteados: ${numberGreaterThanFive.toSet()}');
}