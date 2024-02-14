void main(){
  
  final Hero  wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  
  print( wolverine.toString() );
  print( wolverine.name );
  print( wolverine.power );
}

class Hero{
  
  String? name;
  String? power;
  
  Hero({required this.name, 
         this.power = 'Sin poder'
       });
  
    // inicializacion controlada
//   Hero( String pName,String pPower)
//     : name = pName,
//     power = pPower;
  
//   override cambia el comportamiento de una propiedad nativa,
  @override
  String toString(){
    return '$name, $power';
  }
  
}