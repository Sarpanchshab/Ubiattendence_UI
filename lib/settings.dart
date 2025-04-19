import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsTask extends StatefulWidget {
  const SettingsTask({super.key});

  @override
  State<SettingsTask> createState() => _SettingsTaskState();
}

class _SettingsTaskState extends State<SettingsTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),

      body: Column(
        children: [

          Container(
            padding: const EdgeInsets.only(top: 60, bottom: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.teal]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/ubi.jpg')
                ),
                SizedBox(height: 10),
                Text('Regendra Suman Testing', style: TextStyle(color: Colors.white, fontSize: 18)),
                Text('email@example.com', style: TextStyle(color: Colors.white70)),
                Text('Trial Designation', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),

          // Profile info
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  children: const [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Team',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Employee Code',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '848646545',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Full Name',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Regendra Suman',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date of Joining',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '19/06/2001',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Division',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Chambal',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Bhopal',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Department',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Designation',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shift',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Morning',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Attendance Mode',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shift Timing',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '9:45- 18:45',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date of Joining',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '19/06/2001',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shift',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Morning',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Attendance Mode',
                          style: TextStyle(

                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ),
          )
        ],
      ),


    );
  }
}
