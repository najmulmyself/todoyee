// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderTask extends StatelessWidget {
  const ProviderTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Task'),
      ),
      body: Column(
        children: [
          Text(Provider.of<String>(context)),
        ],
      ),
    );
  }
}
