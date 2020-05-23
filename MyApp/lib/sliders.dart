import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:MyApp/components.dart';

Widget sliderMyActivity() {
  return SliverToBoxAdapter(
      child: Column(
    children: <Widget>[
      SizedBox(
        height: 26,
      ),
      textH1("Daily Activity", Colors.black87),
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
      SizedBox(
        height: 6,
      ),
    ],
  ));
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item.url, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: textH1(item.name, Colors.white)),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

final List<ModelActivity> imgList = [
  ModelActivity("Sleep",
      "https://www.ageuk.org.uk/globalassets/age-uk/media/hero/sleeping-cat-crop.jpg"),
  ModelActivity("Eat",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQVgU7cDtKKycDBhQBWt1-GiPzyqXkxJB-PFBVhQQmTLtV_w0Rv&usqp=CAU"),
  ModelActivity("Code",
      "https://1.bp.blogspot.com/-hLse4R4AZ38/XBwYRtPuuDI/AAAAAAAAB-o/ReuTm7nFdykUjiN2Sp2qdtHh0cFgFoafgCLcBGAs/s1600/Malas%2BNgoding.PNG"),
  ModelActivity("Read",
      "https://www.law-justice.co/img_post/1/2019/2019-06-09/8796ca2e44821f6f7fff4f954ca4d9d1_1.jpg"),
];

class ModelActivity {
  String name;
  String url;

  ModelActivity(this.name, this.url);
}
