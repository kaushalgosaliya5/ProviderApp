import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  final List<bool> _selections = List.generate(3, (_) => false);
  int dropdown_value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Button Screen'),
      ),
      body: Column(
        children: [
          TextButton(
            child: const Text('Text Button'),
            onPressed: () {},
          ),
          DrawerButton(
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo),
          ),
          BackButton(
            onPressed: () {},
          ),
          CloseButton(
            color: Colors.pink,
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text('Elevated Button'),
            onPressed: () {},
          ),
          DropdownButton(
            isExpanded: true,
            value: dropdown_value,
            items: const [
              DropdownMenuItem(
                value: 0,
                child: Text('Yellow'),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text('Green'),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text('Blue'),
              )
            ],
            dropdownColor: Colors.green,
            onChanged: (int? value) {
              setState(() {
                dropdown_value = value!;
              });
            },
          ),
          ToggleButtons(
            color: Colors.teal,
            fillColor: Colors.amber,
            onPressed: (int index) {
              setState(() {
                _selections[index] = !_selections[index];
              });
            },
            isSelected: _selections,
            children: const <Widget>[
              Icon(Icons.format_bold),
              Icon(Icons.format_italic),
              Icon(Icons.format_underlined),
            ],
          )
        ],
      ),
    );
  }
}
