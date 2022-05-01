import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PrefetchImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrefetchImageDemoState();
  }
}

class _PrefetchImageDemoState extends State<PrefetchImageDemo> {
  var width;
  final List<AssetImage> images = [
    AssetImage('prod_control.jpg'),
    AssetImage('prof_risk.jpg'),
    AssetImage('sout.jpg'),
  ];

  @override
  void initState() {
    images.forEach((image) async {
      await precacheImage(AssetImage(''), context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    setState(() {
      width = size;
    });
    return Scaffold(
      body: Container(
        width: width * 0.6,
        height: width * 0.162,
        child: CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 3.0,
              enlargeCenterPage: true,
            ),
            itemBuilder: (context, index, realIdx) {
              return Center(
                  child: Image(
                fit: BoxFit.cover,
                width: width * 0.3,
                image: images[index],
              ));
            }),
      ),
    );
  }
}
