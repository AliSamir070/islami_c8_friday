import 'package:flutter_test/flutter_test.dart';
import 'package:islami_c8_friday/tabs/radio.dart';

void main(){
  test(
    "test name field",
      (){
        // Arrange
        RadioTab radioTab = RadioTab();
        // Act
        bool result = radioTab.check();
        // Assert
        expect(result, false);
      }
  );
}