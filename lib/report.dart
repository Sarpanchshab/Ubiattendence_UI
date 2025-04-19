import 'package:flutter/material.dart';

class ReportTask extends StatefulWidget {
  const ReportTask({super.key});

  @override
  State<ReportTask> createState() => _ReportTaskState();
}

class _ReportTaskState extends State<ReportTask> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report")),
      body:Container(
        child: Text('ReportPage'),
      )
    );
  }
}
