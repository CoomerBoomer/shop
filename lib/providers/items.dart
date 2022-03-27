import 'package:flutter/material.dart';

import '../domain/item.dart';

class Contacts with ChangeNotifier{
  final _all = <Item>[
    new Item('dog', 'WatIsHeDoin'),//,400.20
    new Item('gremlin', 'pure evil'),//,60.90
    new Item('Teimuraz Natroshvili', 'Hallo Teimo'),//,999.99
  ];

  List<Item> get all {
    return [..._all];
  }

  void addContact(Item contact) {
    _all.add(contact);
    notifyListeners();
  }

}
