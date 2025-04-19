import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTask extends StatefulWidget {
  const HomePageTask({super.key});

  @override
  State<HomePageTask> createState() => _HomePageTaskState();
}

class _HomePageTaskState extends State<HomePageTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Big Apple INC')),
      body: SingleChildScrollView(
    child:   Center(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(118),
                  child: Image.asset('assets/ubi.jpg'),
                ),
              ),
              Text('MISS DOLLY', style: TextStyle(fontSize: 30)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  backgroundColor: Colors.orange[600],
                  foregroundColor:
                      Colors.white, // use 'foregroundColor' not 'color'
                ),
                onPressed: () {},
                child: Text('TIMEIN', style: TextStyle(fontSize: 20)),
              ),

              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  padding: EdgeInsets.all( 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'You are at: 1698 Scindia Nagar,\nWest Virginia - 25043',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '(Accurate upto 14.4 m)',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.refresh, color: Colors.teal, size: 16),
                          SizedBox(width: 4),
                          Text(
                            'Refresh Location',
                            style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'Within Geofence',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    )
    );
  }
}
