// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoyee/screen/provider_task.dart';
import 'package:provider/provider.dart';

import 'screen/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String data = 'Hello World from the Parallel Universe';
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) => data,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ProviderTask(),
      ),
    );
  }
}
