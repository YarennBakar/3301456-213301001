
import 'package:flutter/material.dart';

import 'StajerIlanBul.dart';

class StajyerIlanlari extends StatefulWidget {
  @override
  State<StajyerIlanlari> createState() => _StajyerIlanlariState();
}

class _StajyerIlanlariState extends State<StajyerIlanlari> {
  var adSoyad = '';
  var mail = ' ';
  var telNo = ' ';
  var katagori = ' ';
  var sinif = ' ';
  var maas = ' ';

  void _adSoyadKaydet(String text) {
    setState(() {
      adSoyad = text;
    });
  }

  void _mailKaydet(String text) {
    setState(() {
      mail = text;
    });
  }

  void _telNoKaydet(String text) {
    setState(() {
      telNo = text;
    });
  }

  void _katogoriKaydet(String text) {
    setState(() {
      katagori = text;
    });
  }

  void _sinif(String text) {
    setState(() {
      sinif = text;
    });
  }

  void _maas(String text) {
    setState(() {
      maas = text;
    });
  }

  void kontrol() {
    var data = [];
    data.add(adSoyad);
    data.add(mail);
    data.add(telNo);
    data.add(katagori);
    data.add(sinif);
    data.add(maas);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => StajyerIlanBull(),
            settings: RouteSettings(arguments: data)));


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İŞ İLANI EKLE:"),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (text) {
              _adSoyadKaydet(text);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Adınızı giriniz:",
              labelText: "Ad",
              labelStyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            maxLength: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (text) {
              _mailKaydet(text);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "MAİL ADRESİNİZİ GİRİNİZ:",
              labelText: "Mail Adresi",
              labelStyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            maxLength: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (text) {
              _telNoKaydet(text);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "TELEFON NUMARANIZI GİRİNİZ:",
              labelText: "Telefon Numarası",
              labelStyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            maxLength: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (text) {
              _katogoriKaydet(text);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "İŞİN KATAGORİSİNİ GİRİNİZ:",
              labelText: "Katagori",
              labelStyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            maxLength: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (text) {
              _sinif(text);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "ARADIĞINIZ SINIF DURUMUNU BELİRTİNİZ:",
              labelText: "Sınıf Durumu",
              labelStyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            maxLength: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (text) {
              _maas(text);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "MAAŞ BİLGİSİ GİRİNİZ:",
              labelText: "Maaş",
              labelStyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            maxLength: 20,
          ),
        ),

        ElevatedButton(
            style: ElevatedButton.styleFrom(
            ), // foreground

            child: const Text('KAYDET'),
            onPressed: kontrol),
      ]),
    );
  }
}

class StajyerIlanBull extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    List<dynamic>? data = [];
    data = ModalRoute.of(context)?.settings.arguments as List?;
    var adsoyad = data![0];
    var mail = data[1];
    var telNo = data[2];
    var katagori = data[3];
    var sinif = data[4];
    var maas = data[5];
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Stajer İlani Bul"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text('Ad ve Soyad:' + adsoyad, style: TextStyle(fontSize: 35.0)),
          Text('Mail:' + mail, style: TextStyle(fontSize: 35.0)),
          Text('Telefon Numarası:' + telNo, style: TextStyle(fontSize: 35.0)),
          Text('Katagori:' + katagori, style: TextStyle(fontSize: 35.0)),
          Text('Sınıf:' + sinif, style: TextStyle(fontSize: 35.0)),
          Text('Maas:' + maas, style: TextStyle(fontSize: 35.0)),
        ],
      )
      ),

    );
  }
}

class StajyerIlanSil extends StatelessWidget {
  const StajyerIlanSil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Stajyer İlanı Sil"),
      ),
    );
  }
}
