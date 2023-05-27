import 'package:flutter_test/flutter_test.dart';
import 'package:islami_c8_friday/counter.dart';

void main(){
  test("test increment of counter", (){
    // Arrange
    Counter counter = Counter(number: 5);
    // Act
    counter.increment();
    // Assert
    expect(counter.number, 8);
  });
}