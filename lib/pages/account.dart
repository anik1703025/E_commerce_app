import 'package:ecommerce/pages/details_sreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class account extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _controller=TextEditingController();
   account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        print(_controller.text);
      },child: Icon(Icons.abc_outlined),),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: Form(
            key: _formkey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextField(controller: _controller,),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter your Email"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this field can't be empty";
                    } else if (val.length < 4) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter your Name"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this field can't be empty";
                    } else if (val.length < 4) {
                      return "Enter a valid Name";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter your Password"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Password length must be 6-8";
                    } else if (val.length < 6) {
                      return "Enter a valid Password";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (_) => DetailsSreen(),
                          ),
                        );
                      }
                    },
                    child: Text("Validate now"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
