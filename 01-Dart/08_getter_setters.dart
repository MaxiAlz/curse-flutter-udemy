void main(){
  
  final mySquare = Square(side: -10);
  
    mySquare.side = 5;
  
  print('Area: ${mySquare.area}');
    
    
}


class Square{
  double _side;
  
  Square({required double side})
    : assert(side>=0, 'side deberia ser >= 0'),
      _side = side;
  
  double get area{
    return _side * _side;
  }
  
  set side(double value){
    print('seteando nuevo valor $value');
    if(value< 0) throw 'El valor deberia ser mayor que => 0';
    
    _side = value;
  }
  
  
  double calculateArea(){
    return _side * _side;
  }
}
