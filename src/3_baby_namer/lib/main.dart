
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

// Application entry point
void main() => runApp(BabyNamerApp());

// dummy database values
/*
final dummySnapshot = [
  {"name": "Filip", "votes": 15},
  {"name": "Abraham", "votes": 14},
  {"name": "Richard", "votes": 11},
  {"name": "Ike", "votes": 10},
  {"name": "Justin", "votes": 1},
];
*/

// Application root stateless widget class
class BabyNamerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Names',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      home: HomePage(),
    );
  }
}

// Home page stateful widget class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

// Home page state class
class _HomePageState extends State<HomePage> {

  // build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Baby Name Votes')),
      body: _buildBody(context),
    );
  }

  // build body private method
  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('baby').snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData) return LinearProgressIndicator();
        return _buildList(context, snapshot.data.documents);
      }
    );
  }

  // build list private method
  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  // build list item private method
  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.greenAccent),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(record.name, style: new TextStyle(color: Colors.green)),
          trailing: Text(record.votes.toString(), style: new TextStyle(color: Colors.green)),
          //onTap: () => print(record),
          //onTap: () => record.reference.updateData({'votes': record.votes + 1}),
          onTap: () => Firestore.instance.runTransaction((transaction) async {
            final freshSnapshot = await transaction.get(record.reference);
            final fresh = Record.fromSnapshot(freshSnapshot);
            await transaction.update(
              record.reference, {'votes': fresh.votes + 1}
            );
          }),
        ),
      ),
    );

  }

}

// Record class stores a name (String) and number of votes (int)
class Record {
  final String name;
  final int votes;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
    : assert(map['name'] != null),
      assert(map['votes'] != null),
      name = map['name'],
      votes = map['votes'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes>";
}
