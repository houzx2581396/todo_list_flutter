import 'package:flutter/material.dart';
import 'package:todo_list_flutter/todo_list/mission.dart';
import 'package:todo_list_flutter/todo_list/mission_item.dart';

class MissionList extends StatefulWidget {
  const MissionList({Key? key}) : super(key: key);

  @override
  State<MissionList> createState() => _MissionListState();
}

class _MissionListState extends State<MissionList> {
  List<Mission> mission = [Mission(false, 'App'), Mission(false, 'backend')];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: mission.length,
      itemBuilder: (BuildContext context, int index) {
        return MissionItem(
            isFinished: mission[index].isFinished,
            mission: mission[index].mission);
      },
    );
  }
}
