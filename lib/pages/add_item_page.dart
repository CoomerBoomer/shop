import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../domain/item.dart';
import '../providers/items.dart';

class AddContactPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  //final priceController = TextEditingController();

  AddContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final item = Contact('NEW', '201');
    //Provider.of<Contacts>(context, listen: false).addContact(item);
    return Scaffold(
        appBar: AppBar(title: Text('New item')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (input) {
                      if (input == null || input.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    controller: descriptionController,
                    decoration: InputDecoration(label: Icon(Icons.phone)),
                    keyboardType: TextInputType.phone,
                    validator: (input) {
                      if (input == null || input.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      final formState = _formKey.currentState;
                      if (formState == null) return;
                      if (formState.validate()) {
                        final item = Item(
                          nameController.text,
                          descriptionController.text,
                          //priceController.,
                        );
                        Provider.of<Contacts>(context, listen: false)
                            .addContact(item);
                        formState.reset();
                      }
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              )),
        ));
  }
}
