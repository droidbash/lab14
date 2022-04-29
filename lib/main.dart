import 'package:flutter/material.dart';
import 'package:lab14/pages/.pages.dart';
import 'package:provider/provider.dart';
import 'package:lab14/providers/.providers.dart';

void main() {
  runApp(const Lab14());
}

class Lab14 extends StatelessWidget {
  const Lab14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FetchStudents(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const StudentsList(),
      ),
    );
  }
}
