// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyee/models/notifier.dart';

class ProviderTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = ChangesData();

    return ChangeNotifierProvider<ChangesData>(
      create: (context) => data,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Task'),
        ),
        body: Column(
          children: [
            Text(Provider.of<String>(context)),
            TextField(
              onChanged: (newValue) {
                Provider.of<ChangesData>(context).changeText(newValue);
              },
            ),
            Text(Provider.of<ChangesData>(context).helloText),
          ],
        ),
      ),
    );
  }
}
