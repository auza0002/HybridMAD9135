import 'package:hybrid_one/hybrid_one.dart' as hybrid_one;

void main(List<String> arguments) {
  //
  GoldenFish goldenFish = GoldenFish("Diego Auza");
  print("the name of the owner is ${goldenFish.ownerName}");
  goldenFish.eat("golden fish fast food");
  goldenFish.swim("hot");

  //
  Monkey jorgeMonkey = Monkey();
  jorgeMonkey.eat((type: "coco", isMonkeyFod: true));
  jorgeMonkey.eat((type: "mac and chese", isMonkeyFod: false));
  jorgeMonkey.talk();
  //
}

class Animal {
  Animal();
  eat(var food) {
    print("The animal said thanks for the $food");
  }
}

class GoldenFish extends Animal {
  late String ownerName;
  List<String> waterTemperature = ["cold", "normal"];

  GoldenFish(this.ownerName);
  @override
  eat(var food) {
    print('the fish eats "$food"');
  }

  swim(var currentTemperature) {
    if (waterTemperature.contains(currentTemperature)) {
      print("the golden fish is swimming");
    } else {
      print("the temperture is not good for the healht of the fish");
      die();
    }
  }

  die() {
    print("the fish is not alive any more");
  }
}

class Monkey extends Animal {
  @override
  eat(food) {
    if (food.isMonkeyFod) {
      print("Monkey enjoy eating ${food.type}");
    } else {
      print("Monkey DOES not eat that ${food.type}");
    }
  }

  talk() {
    print("Monkey say Hi");
  }
}
