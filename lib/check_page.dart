import 'package:flutter/material.dart';

class Data {
  String address;
  bool isChecked;

  Data(this.address, this.isChecked);
}

class CheckPage extends StatefulWidget {
  const CheckPage({super.key});

  @override
  State<StatefulWidget> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  final List<Data> items = [
    Data('gmail.com', false),
    Data('yandex.ru', false),
    Data('mail.ru', false),
    Data('yahoo.com', false),
    Data('vk.com', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: items
            .map((Data item) => CheckboxListTile(
                title: Text(
                  item.address,
                  style: const TextStyle(fontSize: 20.0),
                ),
                value: item.isChecked,
                onChanged: (value) {
                  setState(() {
                    item.isChecked = value!;
                  });
                }))
            .toList(),
      ),
    );
  }
}
