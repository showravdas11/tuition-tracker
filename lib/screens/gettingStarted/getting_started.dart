import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 166, 114),
        title: Text("sfjsfjskf"),
        centerTitle: true,
         leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 20.0,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
      ),
    );
  }
}