import 'package:diet_app/model/upper_body_workout.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF200087),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Date , Year",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Upper Body  Workout",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.white30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "60 mins",
                            style: TextStyle(color: Colors.white30),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.white30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Easy",
                            style: TextStyle(color: Colors.white30),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                for (int i = 0; i < upperBody.length; i++)
                  Column(
                    children: [
                      for (int j = 0; j < upperBody[i].length; j++)
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              color: const Color(0xFF58409D),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              upperBody[i][j].imagePath,
                              width: 40,
                              height: 40,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            upperBody[i][j].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            upperBody[i][j].instruction,
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      SizedBox(height: 30,)
                    ],
                  ),

              ],
            ),
          ),
        ));
  }
}
