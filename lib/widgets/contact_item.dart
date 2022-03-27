import 'package:flutter/material.dart';

import '../domain/item.dart';

class ContactItem extends StatelessWidget {
  final Item item;

  const ContactItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.description),
    );
  }
}
