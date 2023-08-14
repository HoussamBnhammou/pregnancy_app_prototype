import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  final List<String> list;
  final void Function(String) comms;
  const DropdownButtonExample(
      {super.key, required this.list, required this.comms});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  List<String> list = [];
  String dropdownValue = "";
  Function comms = () {};

  String getDropDownValue() {
    return dropdownValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
          comms(dropdownValue);
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  @override
  void initState() {
    super.initState();
    list = widget.list;
    dropdownValue = list.first;
    comms = widget.comms;
  }
}
