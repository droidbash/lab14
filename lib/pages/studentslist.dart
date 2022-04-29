import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab14/providers/.providers.dart';
import 'package:lab14/widgets/.widgets.dart';

class StudentsList extends StatelessWidget {
  const StudentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FetchStudents studentsProvider = Provider.of<FetchStudents>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: studentsProvider.isLoading
          ? Container(color: Colors.white)
          : StudentsListView(students: studentsProvider.students),
    );
  }
}
