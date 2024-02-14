abstract class Animal{}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

// Declaracion de mixin
mixin Volador {
  void volar() => print('Estoy volando');
}

mixin class Caminante{
  void caminar()=>print('Estoy caminando');
}

mixin class Nadador{
  void nadar()=>print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador {}

class Pato extends Ave with Volador,Caminante,Nadador {}

class Tiburon extends Pez with Nadador{}

class PezVolador extends Pez with Nadador,Volador {}

void main(){
  final flipper = Delfin();
  flipper.nadar();
  
  
  final batman = Murcielago();
  batman.volar();
  batman.caminar();
  
  final namor = Pato();
  namor.volar();
  namor.caminar();
  namor.nadar();
}