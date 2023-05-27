import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Name"
        ),
      ),
    );
  }
  bool check(){
    if(controller.text.length>4){
      return true;
    }else{
      return false;
    }
  }
}
