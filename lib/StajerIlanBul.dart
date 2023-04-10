
import 'package:flutter/material.dart' ;
class StajyerIlanBul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text("Stajyer Ilanı bul"),
        ),
      
body: Row(
  children: const [
    Image(image:AssetImage("assets/resimler/ilan4.jpg"),width: 350,height: 300,),

  ],
),
      );
    }



  }

