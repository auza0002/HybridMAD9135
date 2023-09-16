import 'dart:io';
import 'dart:math';

class Lucky {
  int? finalRandom;
  Lucky() {
    final one = Platform.environment['MIN'].toString();
    final two = Platform.environment['MAX'].toString();

    int randomNumber = Random().nextInt(int.parse(one)) +
        (int.parse(two) - int.parse(one) + 1);
    finalRandom = randomNumber;
  }
}
