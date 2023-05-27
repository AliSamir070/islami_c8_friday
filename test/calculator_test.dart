import 'package:flutter_test/flutter_test.dart';
import 'package:islami_c8_friday/calculator.dart';

void main(){
  test("Test divide", (){
    // Arrange
    Calculator calculator = Calculator();
    // Act
    double result = calculator.divide(6, 0);
    // Assert
    expect(result, 0);
  });
}