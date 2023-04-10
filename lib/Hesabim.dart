import 'package:flutter/material.dart';

class Hesabim extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
            ),
            CircleAvatar(
              radius: 75,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/resimler/resimm.jpg'
              ),
            ),

         Text(
              'kullanıcıadı:',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Text('kullanıcıadı@gmail.com',
                style: TextStyle(fontSize: 25.0, color: Colors.black)),
            TextButton(
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
          ],
        ),
      ),
    );
  }
}
