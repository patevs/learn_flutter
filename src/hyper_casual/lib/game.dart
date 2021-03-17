
/**
 *  lib/main.dart
 */

/*

// IMPORTS
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';
// Flame game engine packages
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/text_component.dart';
import 'package:flame/text_config.dart';
import 'package:flame/palette.dart';
import 'package:flame/sprite.dart';

// Application entry point
void main() => runApp(
  //HyperCasualApp()
  new HyperCasualGame().widget
);

// Palette class used to store common color values
class Palette {
  //static const PaletteEntry black = BasicPalette.black;
  static const PaletteEntry white = BasicPalette.white;
  static const PaletteEntry grey  = PaletteEntry(Color(0xFF404040));
  //static const PaletteEntry red   = PaletteEntry(Colors.red);
  //static const PaletteEntry green = PaletteEntry(Colors.green);
  //static const PaletteEntry blue  = PaletteEntry(Colors.blue);
} // END of Palette

// text rendering styles
TextConfig regular = TextConfig(color: Palette.white.color);
TextConfig small   = regular.withFontSize(14.0);
TextConfig tiny    = regular.withFontSize(12.0);

// Hyper Casual Game class
class HyperCasualGame extends BaseGame {
  // CONSTRUCTOR
  HyperCasualGame() {
    // remove top and bottom bars
    Flame.util.fullScreen();
    // start the game
    _start();
  }
  // METHODS
  _start() async {
    // get the initial screen size
    Size size = await Flame.util.initialDimensions();
    // render welcome text
    add(TextComponent('Welcome to Hyper Casual', config: regular)
      ..anchor = Anchor.topCenter
      ..x = size.width / 2
      ..y = 96.0
    );
    add(new Square(160.0));
    // render player sprite
    add(new PlayerSprite(128.0));
    // render footer text
    add(TextComponent('Patrick Evans', config: small)
      ..anchor = Anchor.bottomCenter
      ..x = size.width / 2
      ..y = size.height - 96.0
    );
    add(TextComponent('2019', config: tiny)
      ..anchor = Anchor.bottomCenter
      ..x = size.width / 2
      ..y = size.height - 64.0
    );
  }
} // END of HyperCasualGame

// PlayerSprite sprite component class
class PlayerSprite extends SpriteComponent {
  // FIELDS
  Sprite sprite = new Sprite('dino.png');
  // CONSTRUCTOR
  PlayerSprite(double size){
    width = height = size;
    anchor = Anchor.center; 
  }
  // METHODS
  @override
  void resize(Size size) {
    this.x = ((size.width - this.width) / 2) + (this.width / 2);
    this.y = ((size.height - this.height) / 2) + (this.height / 2);
  }
  @override
  void render(Canvas c) {
    prepareCanvas(c);
    sprite.render(c, width, height);
  }
} // END of PlayerSprite

// Square component class
class Square extends PositionComponent {
  // FIELDS
  static const SPEED = 0.75;
  // CONSTRUCTOR
  Square(double size) {
    width = height = size;
    anchor = Anchor.center;
  }
  // METHODS
  @override
  void resize(Size size) {
    x = size.width / 2;
    y = size.height / 2; 
  }
  @override
  void render(Canvas c) {
    prepareCanvas(c);
    c.drawRect(
      Rect.fromLTWH(0, 0, width, height), 
      Palette.grey.paint
    );
  }
  @override
  void update(double t) {
    angle += SPEED * t;
    angle %= (2 * math.pi);
  }
} // END of Square

*/

/*
// Hyper Casual app stateless widget class
class HyperCasualApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyper Casual',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      home: HomePage(title: 'Hyper Casual'),
    );
  }
} // END of HyperCasualApp

// Home Page stateless widget class
class HomePage extends StatelessWidget {
  // FIELDS
  final String title;
  // CONSTRUCTOR
  HomePage({Key key, this.title}) : super(key: key);
  // METHODS
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hyper Casual')),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('----------------------------------'),
            new Text('Welcome to Hyper Casual!'),
            new Icon(Icons.cake),
            new Text('----------------------------------'),
          ],
        ),
      ),
    );
  }
} // END of HomePage
*/


// EOF

