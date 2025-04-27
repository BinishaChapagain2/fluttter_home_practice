import 'package:flutter/material.dart';
import 'package:flutter_practice/todo.dart';

class StatefulLifecycleExample extends StatefulWidget {
  const StatefulLifecycleExample({super.key});

  @override
  State<StatefulLifecycleExample> createState() =>
      _StatefulLifecycleExampleState();
}

class _StatefulLifecycleExampleState extends State<StatefulLifecycleExample> {
  @override
  void initState() {
    print("Init state called");
    super.initState();
  }

  // ui ma kei changexa bney balla called hunxa
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  // controller dispose grna / page sakio arko page ma jana xa bney/ (page sakeyko bela na cainey chij faldiney)
  @override
  void dispose() {
    super.dispose();
  }

  // used created model
  Todo todo = Todo(
    title: "title",
    description: "description",
    isCompleted: false,
  );

  // yedi multiple todolist pathauna paryo bney  // _list(private variable(_))
  // List<Todo> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful lifecycle example")),
      // method ma bhako lai kasaari call garney bneyra
      body: Text(todo.description),
    );
  }
}
