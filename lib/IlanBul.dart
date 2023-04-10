
import 'package:flutter/material.dart';

class IlanBul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Ilan bul"),
      ),
      body: Row(
        children: <Widget> [
          Image(image:AssetImage("assets/resimler/ilan5.jpg"),width: 350,height: 300,),

          Image(image:AssetImage("assets/resimler/ilan6.jpg"),width: 350,height: 300,),
        ],
      ),
    );
  }
}
