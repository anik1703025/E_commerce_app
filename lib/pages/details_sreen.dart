import 'package:flutter/material.dart';

class DetailsSreen extends StatelessWidget {
  const DetailsSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: TextButton(onPressed:(){
          Navigator.pop(context);
        }, child: Text("Second Screen"))
      ),
    );
  }
}
