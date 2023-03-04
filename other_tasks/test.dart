import "package:test/test.dart";

import "spin_words.dart";
import "valid_braces.dart";

void main() {
  test('validBraces tests', () {
    expect(validBraces( '()' ), isTrue);
    expect(validBraces( '[(])' ), isFalse);
    expect(validBraces( '[({})](]' ), isFalse);
    expect(validBraces( '[[({})](]' ), isFalse);
  });
  test('spinWords tests', () {
    expect(spinWords( 'This is the longer words' ), 'This is the regnol sdrow');
  });
}