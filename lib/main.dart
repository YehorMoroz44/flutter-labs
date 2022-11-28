import 'package:flutter/material.dart';
import 'data.dart';
import 'home.dart';
void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  MyApp({super.key});
  ScheduleData scheduleData = ScheduleData();
  late List<String> groups = scheduleData.getGroupsNames();
  late String? selectedGroup = groups[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Групи'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(320, 320, 320, 15),
              child: DropdownButton<String>(
                  value: groups.first,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: groups
                      .map((group) =>
                      DropdownMenuItem(
                        value: group,
                        child: Text(group),
                      ))
                      .toList(),
                  onChanged: (String? newGroup) {selectedGroup = newGroup;}
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(selectedGroup : selectedGroup)));
                },
                child: Text('Далі'))
          ],
        ),
      ),
    );
  }}