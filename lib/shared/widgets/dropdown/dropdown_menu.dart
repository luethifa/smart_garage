import 'dart:collection';

import 'package:flutter/material.dart';

const List<String> list = <String>['Settimana', 'Mese'];

class OutlinedDropdownMenu extends StatefulWidget {
  const OutlinedDropdownMenu({super.key});

  @override
  State<OutlinedDropdownMenu> createState() => _OutlinedDropdownMenuState();
}

typedef MenuEntry = DropdownMenuEntry<String>;

class _OutlinedDropdownMenuState extends State<OutlinedDropdownMenu> {
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>(
    list.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: menuEntries,
    );
  }
}
