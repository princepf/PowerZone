import 'package:flutter/material.dart';

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
        heading: 'Mountain \nclimber',
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
        heading: 'Train three days a week',
        image: 'assets/images/unbg3.png'),
  ];
  List<Categarycard> categarycard = [
    Categarycard(image: 'assets/images/endurance.jpg', text: 'Endurance'),
    Categarycard(
        image: 'assets/images/strength.jpg', text: 'Strength training'),
    Categarycard(image: 'assets/images/sport.jpg', text: 'Sport'),
    Categarycard(image: 'assets/images/flexibility.jpg', text: 'Flexibility'),
    Categarycard(image: 'assets/images/aerobic.jpg', text: 'Aerobic'),
    Categarycard(image: 'assets/images/calisthenics.jpg', text: 'Calisthenics'),
    Categarycard(image: 'assets/images/jogging.jpg', text: 'Jogging'),
    Categarycard(image: 'assets/images/karate.jpg', text: 'Karate'),
  ];
//int currentpose = 0;
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
              width: 15,
            )
          ],
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //search
              Container(
                margin: EdgeInsets.all(20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(30)),
                child: ListView(
                  children: [
                    ListTile(
                      title: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                            hintText: "Where are you going now?",
                            border: InputBorder.none),
                        style: TextStyle(
                          fontSize: 15,
                          // color: Colors.grey[400],
                        ),
                      ),
                      //leading: Icon(Icons.search_rounded),
                      trailing: Icon(Icons.sort),
                    )
                  ],
                ),
              ),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  "Top Workouts 💪🏻",
                  style: TextStyle(
                      fontSize: 20,
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
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xff99d8ef),
                              borderRadius: BorderRadius.circular(40)),
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

              //categary
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Category",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categarycard.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                height: 150,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "${categarycard[index].image}"))),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        child: Text(
                                          "${categarycard[index].text}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ))),

              //Todays
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                child: Text(
                  "Todays Plan",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Activity",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Show All",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff99d8ef).withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/gg1.jpg"))),
                    ),
                    Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Squats",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          Container(
                              child: Text(
                            "10 sets of squats",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                          padding: EdgeInsets.only(top: 5, left: 50),
                          child: Text(
                            "06:00 AM",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xfffda0dd).withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sport.jpg"))),
                    ),
                    Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Running",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          Container(
                              child: Text(
                            "15 Km  Running ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                          padding: EdgeInsets.only(top: 5, left: 50),
                          child: Text(
                            "06:45 AM",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),

              //meal
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                child: Text(
                  "Meal",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Activity",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Show All",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff99d8ef).withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/meal.jpg"))),
                    ),
                    Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Breakfast",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          Container(
                              child: Text(
                            "Tea,Bread,BoileEgg",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                          padding: EdgeInsets.only(top: 5, left: 50),
                          child: Text(
                            "08:00 AM",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xfffda0dd).withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/meal1.jpg"))),
                    ),
                    Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Lunch",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          Container(
                              child: Text(
                            "Taco Salad Bowls. ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                          padding: EdgeInsets.only(top: 5, left: 50),
                          child: Text(
                            "12:45 AM",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
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
