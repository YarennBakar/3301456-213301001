
import 'package:flutter/material.dart';
import 'Ayarlar.dart';
import 'Hakkimda.dart';
import 'Hesabim.dart';
import 'IlanBul.dart';
import 'Ilanlar.dart';
import 'StajerIlanBul.dart';
import 'StajerIlanlari.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkrani(),
    );
  }
}

class GirisEkrani extends StatefulWidget {
  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}
class _GirisEkraniState extends State<GirisEkrani> {

  @override
  Widget build(BuildContext context) {
    void Kontrol(){
      var data=[];
      Navigator.push(
          context ,
          MaterialPageRoute(
              builder: (context) => AnaEkran(),
              settings: RouteSettings(arguments: data)));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('İŞKURA HOŞGELDİNİZ'),
      ),
      body: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100),
           SizedBox(
            width:500,
            height: 100,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "KULLANICI ADINIZI GİRİNİZ:",
                hintStyle: TextStyle(
                  fontSize: 10,
                ),
                labelText: "KullaniciAdi",
                labelStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
              maxLength: 20,
            ),
          ),

            SizedBox(
              width:500,
              height: 100,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "MAILINIZI GİRİNİZ:",
                  hintStyle: TextStyle(
                    fontSize: 10,
                  ),
                  labelText: "Mail",
                  labelStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
                maxLength: 20,
              ),
            ),

      SizedBox(
              width:500,
              height: 100,
      child: TextFormField(
        obscureText: true,
        obscuringCharacter: '*',
        cursorColor: Colors.black,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: "SIFRE ADRESİNİZİ GİRİNİZ:",
        hintStyle: TextStyle(
          fontSize: 10,
        ),
      labelText: "Sifre",
      labelStyle: TextStyle(
      fontSize: 10,
      color: Colors.black,
      ),
      ),
      maxLength: 20,
      ),
      ),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
              ), // foreground

              child: const Text('Girisyap'),
              onPressed: Kontrol
          ),

        ],
      ),
    ),
    );
  }
}
class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("İşKur"),
      ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
            ),
            Text(
              "İşKur'a Hoşgeldiniz",
              style: TextStyle(
                fontSize: 50,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            Image.asset('assets/resimler/ilan2.jpg'),

          ],
        ),
      drawer: Drawer(
        child:ListView(
          children: <Widget>[
        UserAccountsDrawerHeader(
        accountName: Text('kullanıcıAdı',
          style: TextStyle(fontSize: 15.0, color: Colors.white),
        ),
        accountEmail: Text('kullanıcıadı@mail.com',
            style: TextStyle(color: Colors.white)),
        currentAccountPicture: CircleAvatar(
          radius: 50.0,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/resimler/resimm.jpg'),

        ),
      ),
            ListTile(
                trailing: Icon(Icons.home),
                title: Text("Anasayfa"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnaEkran()));
                }),
            ExpansionTile(
              title: Text("İş İlanları"),
              trailing: Icon(Icons.arrow_drop_down),
              children: <Widget>[
                ListTile(
                    title: Text("İş İlanı Ekle"),
                    trailing: Icon(Icons.add),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ilanlar()));
                    }),
                ListTile(
                  title: Text("İş İlanını Sil"),
                  trailing: Icon(Icons.remove),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IlanSil()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Stajyer İş İlanları"),
              trailing: Icon(Icons.arrow_drop_down),
              children: <Widget>[
                ListTile(
                    title: Text("Stajyer İş İlanı Ekle"),
                    trailing: Icon(Icons.add),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StajyerIlanlari()));
                    }),
                ListTile(
                  title: Text("İş İlanını Sil"),
                  trailing: Icon(Icons.remove),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StajyerIlanSil()));
                  },
                ),
              ],
            ),
            ListTile(
              title: Text("İş İlanı Bul"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IlanBul()));
              },
            ),
            ListTile(
              title: Text("Stajyer İş İlanı Bul"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StajyerIlanBul()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Hakkımızda"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hakkimda()));
              },
            ),
            ListTile(
              title: Text("Hesabım"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hesabim()));
              },
            ),
            ListTile(
              title: Text("Ayarlar"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ayarlar()));
              },
            ),
            Divider(),
            const ListTile(
              title: Text("Çıkış"),
              trailing: Icon(Icons.exit_to_app),
            ),
      ]
    )
      )
      );
  }
}