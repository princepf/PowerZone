import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AnalysticsPage extends StatefulWidget {
  AnalysticsPage({Key? key}) : super(key: key);

  @override
  _AnalysticsPageState createState() => _AnalysticsPageState();
}

class _AnalysticsPageState extends State<AnalysticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          "Analystick",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(
                "Today",
                style: TextStyle(
                    color: Color(0xfffda0dd),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              child: Text(
                "Mon 26 Apr",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Text(
                          "Calories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                          color: Color(0xfffda0dd),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                          color: Color(0xfffda0dd),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: CircularPercentIndicator(
                  radius: 180,
                  lineWidth: 17,
                  animation: true,
                  percent: 0.7,
                  center: Container(
                    child: Text(
                      "536 Cal",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  header: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Active calories",
                      style: new TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.black12,
                  linearGradient: LinearGradient(
                      colors: [Color(0xfffda0dd), Color(0xff81c1fe)])),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color(0xffaeacf9),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Training Time",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "45 Min",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                        LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          width: 140.0,
                          lineHeight: 14.0,
                          percent: 0.4,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.white,
                          progressColor: Color(0xff81c1fe),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color(0xff99d8ef),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Steps",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "8670",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                        LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          width: 140.0,
                          lineHeight: 14.0,
                          percent: 0.7,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.white,
                          progressColor: Color(0xfffda0dd),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
