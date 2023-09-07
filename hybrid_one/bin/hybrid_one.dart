import 'package:hybrid_one/hybrid_one.dart' as hybrid_one;

void main(List<String> arguments) {
  GoldenFish goldenFish = GoldenFish();

  SilverFish silverFish = SilverFish();
}

class Fish {
  Fish();
}

class GoldenFish extends Fish {
  eat(var food) {}
  swim() {
    print("the fish is swimmig");
  }
}

class SilverFish extends Fish {
  eat() {}
  reverse() {
    print("The fish is going backwards");
  }
}
