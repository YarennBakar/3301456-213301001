
import 'package:flutter/material.dart';
class Hakkimda extends StatelessWidget {
  const Hakkimda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        //child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget>[
          Text( "Bu uygulama 213301001 numaralı Öğrenci tarafından gelistirilmistir.",
          style: TextStyle(fontSize: 25.0,color: Colors.black87)),
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
    );
  }
}
