import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_4bhif/pages/add_item_page.dart';

import '../providers/items.dart';
import '../widgets/contact_item.dart';

class ContactsOverviewPage extends StatelessWidget {
  const ContactsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final contacts = Provider.of<Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          IconButton(onPressed: () {Navigator();}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => new AddContactPage()));
        },
      ),
      body: Consumer<Contacts>(
        child:const Divider(), //------v
        builder: (context, contacts, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemBuilder: (context, index) => ContactItem(contacts.all[index]),
            itemCount: contacts.all.length,
            separatorBuilder: (_, __) => child!,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 100,
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Shop"),
              onTap: (){
                //Navigator
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("Orders"),
              onTap: (){
                //Navigator
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Manage products"),
              onTap: (){
                //Navigator
              },
            )
          ],
        ),
      ),
    );
  }
}
