import 'package:flutter/material.dart';

class TopWorkouts extends StatefulWidget {
  TopWorkouts({Key? key}) : super(key: key);

  @override
  _TopWorkoutsState createState() => _TopWorkoutsState();
}

class _TopWorkoutsState extends State<TopWorkouts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) => Container(
                height: 220,
                width: double.infinity,
                color: Colors.amber,
              )),
    );
  }
}
