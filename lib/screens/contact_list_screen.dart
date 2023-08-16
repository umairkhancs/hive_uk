import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/contact_data.dart';
import '../widgets/contact_list.dart';

class ContactListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get list of contacts but do not listen (would trigger a loop)
    Provider.of<ContactsData>(context, listen: false).getContacts();

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Contacts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                child: ContactsList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/AddContactScreen');
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
