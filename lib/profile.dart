import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTask extends StatefulWidget {
  const ProfileTask({super.key});

  @override
  State<ProfileTask> createState() => _ProfileTaskState();
}

class _ProfileTaskState extends State<ProfileTask> {

  List<Map<String, String>> data = [
    {"name": "vijay", "email": "raj@gmail.com", "phone": "1234789"},
    {"name": "raj", "email": "vijay@gmail.com", "phone": "123454589"},
    {"name": "ram", "email": "shyam@gmail.com", "phone": "1234546789"},
  ];

  bool showDeleteConfirm = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body:  Column(
        children: [

          Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[300]),
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Name"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Email"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Phone"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Delete"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Update"),
                  ),
                ],
              ),


              ...data.map((item) {
                return TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(item["name"]!),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(item["email"]!),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(item["phone"]!),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          showDeleteConfirm = true;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.edit),
                    ),
                  ],
                );
              }).toList(),
            ],
          ),

          if (showDeleteConfirm)
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Column(
                children: [
                  Text("Are you sure want to delete?", style: TextStyle(color: Colors.red)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showDeleteConfirm = false;
                          });
                        },
                        child: Text("No"),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          // delete logic
                          setState(() {
                            showDeleteConfirm = false;
                          });
                        },
                        child: Text("Yes"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      )
    );
  }
}
