void main(){
  
  final windPlant = WindPlant(initialEnergy: 100);
   final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print(windPlant);
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
  
}

// Aplica el principio de inyeccion de dependencias
// funcion para cargar el celular que recibe cualquier planta de energia
double chargePhone (EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('No hay suficiente energia');
  }
  
  return plant.energyLeft -10 ;
}

enum PlantType { nuclear,wind, water }

//definicion de una clase abstracta
abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; //nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft, 
    required this.type
    });
  
  void consumeEnergy(double amount){}

}

// extends(hereda de otra classe) o implements(seria para que utiice unicamente un metodo en particular de una clase)
class WindPlant extends EnergyPlant{
  
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
 
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }

}