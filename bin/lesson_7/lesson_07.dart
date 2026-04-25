import 'animals.dart';
import 'interfaces.dart';
import 'mixins.dart';
import 'transports.dart';

void main() {
  Cat cat = Cat('Tom', 2);

  List<Drawable> drawables = [
    cat,
    Car(),
    Parrot('Polly', 5),
    Plane(),
    Snake('Kaa', 10),
  ];

  for (var element in drawables) {
    drawAllVariants(element);
    if (element is Animal) {
      Animal a = element as Animal; // type casting
      a.makeSound();
      a.sleep();
    }
    if(element is Playable){
      (element as Playable).play();
    }
    if(element is Fly){
      (element as Fly).fly();
      (element as Fly).flyHigh(element.runtimeType.toString());
    }
  }
}

void drawAllVariants(Drawable d) {
  d.draw();
  print(d.draw3D('plastic'));
}
