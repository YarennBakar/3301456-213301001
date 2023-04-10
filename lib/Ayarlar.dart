
import 'package:flutter/material.dart';
class Ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Ayarlar"),
    ),
      body: Center(
        child:TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Anasayfaya don",
            style: TextStyle(
                fontSize: 19,
                color: Colors.red,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
