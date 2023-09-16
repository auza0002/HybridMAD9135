import 'package:hybrid_two/hybrid_two.dart' as hybrid_two;

void main(List<String> arguments) {
  for (String arg in arguments) {
    final lucky = hybrid_two.Lucky();
    final luckyNumber = lucky.finalRandom;
    var newString = arg.toLowerCase();
    print("Hello there, $newString your number $luckyNumber");
  }
}
