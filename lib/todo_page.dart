import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                tasks.removeLast();
              });
            },
            icon: const Icon(
              Icons.remove,
            ),
          ),
        ],
        title: const Text(
          'Lista de Tarefas',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Card(
            color: Colors.grey[500],
            child: ListTile(
              trailing: const Icon(Icons.more_vert),
              title: Text(
                '${index + 1} - ${tasks[index]}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/form').then((value) {
            if (value != null) {
              setState(() {
                tasks.add(value as String);
              });
            }
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
