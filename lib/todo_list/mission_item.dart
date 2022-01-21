import 'package:flutter/material.dart';

class MissionItem extends StatefulWidget {
  const MissionItem({Key? key}) : super(key: key);

  @override
  _MissionItemState createState() => _MissionItemState();
}

class _MissionItemState extends State<MissionItem> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isFinished,
      onChanged: (bool? value) {
        setState(() {
          isFinished = !isFinished;
        });
      },
      title: const Text('Hello World'),
      secondary: const Icon(Icons.home),
    );
  }
}
