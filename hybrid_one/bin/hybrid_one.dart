void main(List<String> arguments) {
  // Create a GoldenFish
  GoldenFish goldenFish = GoldenFish("Diego Auza");
  print("The owner's name is ${goldenFish.ownerName}");
  goldenFish.eat("golden fish fast food");
  goldenFish.swim("hot");

  // Create a Monkey
  Monkey jorgeMonkey = Monkey();
  jorgeMonkey.eat(Food(type: "coconut", isMonkeyFood: true));
  jorgeMonkey.eat(Food(type: "mac and cheese", isMonkeyFood: false));
  jorgeMonkey.talk();
}

class Animal {
  Animal();

  // Method for all animals to eat
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
    print('The fish eats "$food"');
  }

  swim(var currentTemperature) {
    if (waterTemperature.contains(currentTemperature)) {
      print("The golden fish is swimming");
    } else {
      print("The temperature is not good for the health of the fish");
      die();
    }
  }

  die() {
    print("The fish is not alive anymore");
  }
}

class Monkey extends Animal {
  @override
  eat(food) {
    if (food.isMonkeyFood) {
      print("The monkey is eating ${food.type}");
    } else {
      print("The monkey does not eat that: ${food.type}");
    }
  }

  talk() {
    print("The monkey says Hi");
  }
}

class Food {
  final String type;
  final bool isMonkeyFood;

  Food({required this.type, required this.isMonkeyFood});
}
