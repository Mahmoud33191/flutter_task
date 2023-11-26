import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenThree extends StatefulWidget {
  static const String routName="three";



  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final myItems=[
    Image.asset("assets/images/box.jpg"),
    Image.asset("assets/images/box.jpg"),
    Image.asset("assets/images/box.jpg"),
    Image.asset("assets/images/box.jpg"),
    Image.asset("assets/images/box.jpg"),
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل الطلب",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          CarouselSlider(
         options: CarouselOptions(
           autoPlay: true,
           height: 200,
           onPageChanged: (index,reason){
             setState(() {
               currentIndex=index;
             });
           },
         ),
           items: myItems
        ),
          Center(
            child: AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: myItems.length,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                spacing: 5,
                dotColor: Colors.grey,
                activeDotColor: Colors.cyan,
                paintStyle: PaintingStyle.fill
              ),
            ),
          ),




      ]
      ),
    );
  }
}
