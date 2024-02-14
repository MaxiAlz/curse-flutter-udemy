void main(){
  
  final Map<String, dynamic> rawJson = {
     'name': 'Toni stark',
     'isAlive': false,
     'power': 'Money'
  };
  
// final Hero ironman = Hero(
//   name: 'Tony stark',
//   isAlive: rawJson['isAlive'] ?? false,
//   power: 'Money');
  
//   print(ironman.toString());
  
  final iroman = Hero.fromJson( rawJson );
  
  print(iroman);
}


class Hero{
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //creo una clase especificamente para un json, para poder mapear los datos
  Hero.fromJson(Map<String,dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  
  @override
String toString() {
  return '$name, $power, isAlive: ${isAlive ? 'Yes' : 'Nop'}';
}
  
}
