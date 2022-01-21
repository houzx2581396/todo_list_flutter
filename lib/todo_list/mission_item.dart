import 'package:flutter/material.dart';

class MissionItem extends StatefulWidget {
  const MissionItem({Key? key, required this.isFinished, required this.mission})
      : super(key: key);
  final bool isFinished;
  final String mission;

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
      title: Text(widget.mission),
      secondary: const Icon(Icons.home),
    );
  }
}
