import 'package:flutter/material.dart';
import 'package:lab14/models/.models.dart';
import 'package:lab14/pages/.pages.dart';

class StudentsListView extends StatelessWidget {
  final List<Student> students;
  const StudentsListView({
    Key? key,
    required this.students,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(students[index].fullname ?? ""),
          subtitle: Text(" No. control: " + students[index].no.toString()),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentInfo(student: students[index]),
              ),
            );
          },
        );
      },
    );
  }
}
