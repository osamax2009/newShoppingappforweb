
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: (){

        },
        child: Text(" continue ... ",
          style: TextStyle(
              fontSize: 20,
              color: Colors.orange
          ),),
      ),
    );
  }
}


