// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyee/models/notifier.dart';

class ProviderTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final data = ChangesData();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Task'),
      ),
      body: Column(
        children: [
          Text(Provider.of<String>(context)),
          TextField(
            onChanged: (newValue) {
              Provider.of<ChangesData>(
                context,
                listen:
                    false, // error happend : This is likely caused by an event handler (like a button's onPressed) that called
// Provider.of without passing `listen: false`.
              ).changeText(newValue);
            },
          ),
          Text(Provider.of<ChangesData>(context).helloText),
        ],
      ),
    );
  }
}
