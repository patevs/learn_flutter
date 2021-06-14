import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'azlistview.dart';
import 'scrollable_positioned_list.dart';

void main() {
    runApp(MyApp());
    if (Platform.isAndroid) {
        SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    }
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'UI - List View',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: MyHomePage(title: 'UI - List View'),
        );
    }
}

class MyHomePage extends StatefulWidget {

    // CONSTRUCTOR //

    MyHomePage({Key? key, required this.title}) : super(key: key);

    // FIELDS //

    final String title;

    // METHDOS //

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    // METHODS //

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                // Here we take the value from the MyHomePage object that was created by
                // the App.build method, and use it to set our appbar title.
                title: Text(widget.title),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        ElevatedButton(
                            child: Text('Show Scrollable Positioned List'),
                            onPressed: showScrollList,
                        ),
                        ElevatedButton(
                            child: Text('Show AZ List View'),
                            onPressed: showAzListView,
                        )
                    ],
                ),
            ),
        );
    }

    showScrollList() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (c) => ScrollablePositionedListPage()
            )
        );
    }

    showAzListView() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (c) => AzListView()
            )
        );
    }
}

/* EOF */
