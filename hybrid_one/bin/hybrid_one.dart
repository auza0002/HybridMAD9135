import 'dart:math';

void main(List<String> arguments) {
  print("");
  Zoo sanFranciscoZoo = Zoo();
  sanFranciscoZoo.feed("beef", 153);
  print("");
  LionKing matisLion = LionKing();
  matisLion.photo();
  matisLion.feed("hotdog", 89);
  matisLion.feed("beef", 35);
  print("");
  Monkey jorge = Monkey();
  jorge.talk();
  jorge.feed("coconut", 10);
}

class Zoo {
  Zoo();

  // Method for all animals to eat
  feed(String food, [int money = 0]) {
    num quantity = money * 0.3;
    if (money == 0) {
      print("You can not buy $food witout money");
    } else {
      print("You paid $money and they gave you $quantity km of $food");
    }
  }
}

class LionKing extends Zoo {
  // late String ownerName;
  List<String> lionFood = ["beef", "chicken", "pork"];

  // LionKing(this.ownerName);

  photo() {
    var photos = Random().nextInt(15);
    print("You took $photos picture of the lion");
  }

  @override
  feed(String food, [int quantity = 0]) {
    if (quantity == 0) {
      print("you need food if you want to feed the lion");
    } else if (lionFood.contains(food)) {
      print("you gave $quantity kg of $food to the lion");
    } else {
      print("The lion does not eat that. It only eats Beef, Chicken or Pork");
    }
  }
}

class Monkey extends Zoo {
  List<String> monkeyFood = ["banana", "coconut", "nuts", "mango"];
  talk() {
    print("The monkey says Hi");
    double totalJumps = Random().nextDouble() * 1;
    jumps(totalJumps);
  }

  jumps(totalJumps) {
    print("The monkey jumps ${totalJumps.toStringAsFixed(2)} cm");
  }

  @override
  feed(String food, [int quantity = 0]) {
    if (quantity == 0) {
      print("you need food if you want to feed the monkey");
    } else if (monkeyFood.contains(food)) {
      print("you gave $quantity kg of $food to the monkey");
    } else {
      print(
          "The monkey does not eat that. It only eats banana, coconut or mango");
    }
  }
}
