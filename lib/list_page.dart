import 'package:flutter/material.dart';

class User {
  String name;
  int age;

  User(this.name, this.age);
}

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<StatefulWidget> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<User> users = <User>[
    User('Лобанов Илья', 20),
    User('Кононыхин Максим', 19),
    User('Петров Алексей', 20),
    User('Гулидов Иван', 20),
    User('Михалев Дмитрий', 20),
    User('Гришечкин Максим', 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(users[index].name, style: const TextStyle(fontSize: 22.0)),
                Text('Возраст: ${users[index].age}',
                    style: const TextStyle(fontSize: 18.0)),
              ],
            ),
          );
        },
      ),
    );
  }
}
