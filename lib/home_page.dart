import 'package:flutter/material.dart';
import 'package:power_zone/home_page_widget/top_workouts.dart';

import 'models/home_model.dart';

// import 'package:carousel_slider/carousel_slider.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Topworkoutmodel> topworkouts = [
    Topworkoutmodel(
        buca: '🔥 35 Cal',
        bumi: '40 Min',
        color: '0xfffdaodd',
        //0xff99d8ef
        dcr: 'Full body workout',
        heading: 'Weight Loss Training',
        image: 'assets/images/unbg.png'),
    Topworkoutmodel(
        buca: '🔥 40 Cal',
        bumi: '55 Min',
        color: '0xfffdaodd',
        dcr: 'Full body workout',
        heading: 'Weight Loss Training',
        image: 'assets/images/unbg1.png'),
    Topworkoutmodel(
        buca: '🔥 35 Cal',
        bumi: '40 Min',
        color: 'Colors.black',
        //0xff99d8ef
        dcr: 'Full body workout',
        heading: 'Weight Loss Training',
        image: 'assets/images/unbg.png'),
    Topworkoutmodel(
        buca: '🔥 35 Cal',
        bumi: '40 Min',
        color: 'Colors.black',
        //0xff99d8ef
        dcr: 'Full body workout',
        heading: 'Weight Loss Training',
        image: 'assets/images/unbg3.png'),
  ];
  //int currentpose = 0;
  List cources = [
    "assets/images/endurance.jpg",
    "assets/images/strength.jpg",
    "assets/images/sport.jpg",
    "assets/images/flexibility.jpg",
    "assets/images/aerobic.jpg",
    "assets/images/calisthenics.jpg",
    "assets/images/jogging.jpg",
    "assets/images/karate.jpg",
  ];
  List courcestext = [
    "Endurance",
    "Strength training",
    "Sport",
    "Flexibility",
    "Aerobics",
    "Calisthenics",
    "Jogging",
    "Karate",
  ];
  // List<String> infintycard = [
  //   "assets/images/gb1.jpg",
  //   "assets/images/gg1.jpg",
  //   "assets/images/gb2.jpg",
  //   "assets/images/gg2.jpg",
  //   "assets/images/gb3.jpg",
  //   "assets/images/gg3.jpg",
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.drag_handle,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            "Browse",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // CarouselSlider.builder(
              //     itemCount: infintycard.length,
              //     itemBuilder: (context, index, realIndex) =>
              //         cards(infintycard[index]),
              //     options: CarouselOptions(
              //         height: 600,
              //         enlargeCenterPage: true,
              //         viewportFraction: 1,
              //         autoPlay: true,
              //         autoPlayCurve: Curves.fastOutSlowIn,
              //         onPageChanged: (index, reason) {
              //           setState(() {
              //             currentpose = index;
              //           });
              //         })),
              // Center(
              //   child: Container(
              //     padding: EdgeInsets.symmetric(vertical: 10),
              //     child: AnimatedSmoothIndicator(
              //         activeIndex: currentpose,
              //         count: 6,
              //         effect: ExpandingDotsEffect(
              //             activeDotColor: Color(0XFFF75B5B),
              //             dotHeight: 12,
              //             dotWidth: 12)),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Text(
                  "Top Workouts 💪🏻",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),

              //TopWorkouts(),
              Container(
                height: 220,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: topworkouts.length,
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xff99d8ef),
                              borderRadius: BorderRadius.circular(15)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 40,
                                top: 20,
                                child: Container(
                                  height: 450,
                                  //width: 550,
                                  child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "${topworkouts[index].image}")),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 20, left: 20, right: 100),
                                child: Text("${topworkouts[index].heading}",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 90, left: 20, right: 200),
                                child: Text("${topworkouts[index].dcr}",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 20,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(
                                        0.7,
                                      ),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(children: [
                                    Icon(Icons.play_arrow_rounded),
                                    Text("${topworkouts[index].bumi}",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ]),
                                ),
                              ),
                              Positioned(
                                left: 120,
                                bottom: 20,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(
                                        0.7,
                                      ),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text("${topworkouts[index].buca}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              )
                            ],
                          ),
                        )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Text(
                  "Category",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  height: 150,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cources.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage("${cources[index]}"))),
                              ),
                              Text("${courcestext[index]}")
                            ],
                          ))),
            ],
          ),
        ),
      ),
    );
  }

  // cards(String infintycard) => Container(
  //       height: 600,
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //           image: DecorationImage(
  //               fit: BoxFit.cover, image: AssetImage(infintycard))),
  //     );
}
