import 'package:flutter/material.dart';

void main() => runApp(TaskApp());

class TaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task {
  String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});
}

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = List.generate(
    5,
    (index) => Task(title: 'Task 2022-07-09 18:08:33.${100000 + index}'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('View Completed Tasks'),
            ),
            SizedBox(height: 10),
            Text('You have ${tasks.where((t) => !t.isCompleted).length} uncompleted tasks'),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return Card(
                    color: Colors.yellow[700],
                    child: ListTile(
                      title: Text(task.title),
                      trailing: Checkbox(
                        value: task.isCompleted,
                        onChanged: (bool? value) {
                          setState(() {
                            task.isCompleted = value ?? false;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Aviso'),
              content: Text('Você está no App de Notas de Tarefas'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Fechar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
