// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final taskNameController = TextEditingController();

  final List<String> taskList = [];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: taskNameController,
              decoration: const InputDecoration(
                labelText: 'Task Name',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                taskList.add(taskNameController.text);
                taskNameController.clear();
                setState(() {});
              },
              child: const Text('Add Task'),
            ),
            ...List.generate(
              taskList.length,
              (index) => _TaskContainer(
                  task: taskList[index],
                  onPressed: () {
                    taskList.removeAt(index);
                    setState(() {});
                  }),
            )
          ],
        ),
      )),
    );
  }
}

class _TaskContainer extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String task;
  const _TaskContainer({
    Key? key,
    required this.onPressed,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        title: Text(
          task,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.cancel),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
