import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components.dart';

Widget sosmed() {
  return SliverToBoxAdapter(
      child: Column(
    children: <Widget>[
      textH1("Social Media", Colors.black87),
      Container(
        height: 300,
        child: GridView.builder(
          itemCount: myPortos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (BuildContext context, int index) {
            return cardPorto(myPortos[index].url, myPortos[index].urlImage);
          },
        ),
      ),
    ],
  ));
}

class Portofolio {
  String url;
  // String name;
  String urlImage;

  Portofolio(this.url, this.urlImage);
}

final List<Portofolio> myPortos = [
  Portofolio("https://github.com/evrintobing17", "assets/github.png"),
  Portofolio("https://www.linkedin.com/in/evrin-lumbantobing-11b312171/", "assets/linkedin.png"),
  Portofolio("https://facebook.com/evrin.binkz/", "assets/facebook.png"),
  Portofolio("https://www.instagram.com/evrintobing/", "assets/instagram.png"),
];


Widget cardPorto(String url, String imgUrl) {
  return InkWell(
    onTap: () {
      print("Klik Url");
      launch(url);
    },
    child: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(imgUrl, fit: BoxFit.cover),
        ),
        //  Positioned(
        //   left: 10,
        //   bottom: 6,
        //   child: Text(style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
        // )
      ],
    ),
  );
}
