import 'dart:developer';

import 'package:flutter/material.dart';

class AddMission extends StatefulWidget {
  const AddMission({Key? key}) : super(key: key);

  @override
  _AddMissionState createState() => _AddMissionState();
}

class _AddMissionState extends State<AddMission> {
  final missionTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.add),
              hintText: 'AddMission',
              labelText: 'Mission',
            ),
            controller: missionTextController,
          ),
          TextButton(
            child: const Text('ADD'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
