import 'package:flutter/material.dart';

enum PageColors {
  red,
  blue,
  green,
  white,
  black,
}

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<StatefulWidget> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  PageColors? choosen = PageColors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
            title: const Text('Red'),
            leading: Radio<PageColors>(
              value: PageColors.red,
              groupValue: choosen,
              onChanged: (value) => setState(() {
                choosen = value;
              }),
            ),
          ),
          ListTile(
            title: const Text('Green'),
            leading: Radio<PageColors>(
              value: PageColors.green,
              groupValue: choosen,
              onChanged: (value) => setState(() {
                choosen = value;
              }),
            ),
          ),
          ListTile(
            title: const Text('Blue'),
            leading: Radio<PageColors>(
              value: PageColors.blue,
              groupValue: choosen,
              onChanged: (value) => setState(() {
                choosen = value;
              }),
            ),
          ),
          ListTile(
            title: const Text('White'),
            leading: Radio<PageColors>(
              value: PageColors.white,
              groupValue: choosen,
              onChanged: (value) => setState(() {
                choosen = value;
              }),
            ),
          ),
          ListTile(
            title: const Text('Black'),
            leading: Radio<PageColors>(
              value: PageColors.black,
              groupValue: choosen,
              onChanged: (value) => setState(() {
                choosen = value;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
