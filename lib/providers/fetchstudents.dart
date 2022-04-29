import 'package:flutter/material.dart';
import 'package:lab14/models/.models.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class FetchStudents extends ChangeNotifier {
  final List<Student> students = [];
  bool isLoading = true;
  FetchStudents() {
    fetchStudents();
  }
  Future fetchStudents() async {
    isLoading = true;
    notifyListeners();
    final resp = await rootBundle.loadString('lib/resources/students.json');
    print(resp);
    final List<dynamic> data = json.decode(resp) as List<dynamic>;
    data.forEach((element) => students.add(Student.fromJson(element)));
    isLoading = false;
    notifyListeners();
    // return students;
  }
}
