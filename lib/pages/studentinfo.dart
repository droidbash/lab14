import 'package:flutter/material.dart';
import 'package:lab14/models/student.dart';
import 'package:lab14/widgets/.widgets.dart';

class StudentInfo extends StatelessWidget {
  final Student student;
  const StudentInfo({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.fullname ?? ""),
      ),
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 10,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Portrait(name: student.fullname ?? "  "),
            ),
          ),
          buildUserInfoDisplay(student.fullname ?? "", 'Name'),
          buildUserInfoDisplay(student.career ?? "", 'Career'),
          buildUserInfoDisplay(student.no.toString(), 'Control Number'),
          buildUserInfoDisplay(student.mail ?? "", 'Mail'),
          buildUserInfoDisplay(student.phone ?? "", 'Phone'),
          buildUserInfoDisplay(student.semester ?? "", 'Semester'),
        ],
      ),
    );
  }
}
