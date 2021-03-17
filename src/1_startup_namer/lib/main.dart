
/**
 * lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// main method - application entry point
void main() => runApp(MyApp());

// root app stateless widget class
class MyApp extends StatelessWidget {

  // build method
  @override
  Widget build(BuildContext context){
    // app widget
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primarySwatch: Colors.green,
        dividerColor: Colors.greenAccent
      ),
      home: RandomWords()
    );
  }

}

// random words state class
class RandomWordsState extends State<RandomWords> {

  // prefixing with an underscore enforces privacy
  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0, color: Colors.green);
  
  // build suggestions method
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/
        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  // build row method
  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.green : null,
      ),
      onTap: () {
        setState(() {
          if(alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      }
    );
  }

  // push saved method
  void _pushSaved() {

    Navigator.of(context).push(
    
      new MaterialPageRoute<void>(
        builder: (BuildContext context) {

          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                )
              );
            }
          );

          final List<Widget> divided = ListTile
            .divideTiles(
              context: context,
              tiles: tiles,
            )
            .toList();
          return new Scaffold(
            appBar: new AppBar(
              title: const Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        
        }
      )
  
    );
  
  }
  
  // build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions()
    );
  }

}

// random words stateful widget class
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}


// EOF

