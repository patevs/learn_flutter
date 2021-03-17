
/**
*   # HYPER CASUAL
* 
* lib/main.dart 
* 
* @Author Patrick Evans
*/

// IMPORTS
import 'package:flutter/material.dart';

// spinkit loading indicators
//import 'package:flutter_spinkit/flutter_spinkit.dart';

// dart libs
//import 'dart:async';
//import 'dart:math' as math;
import 'dart:ui';

// Flame game engine packages
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
//import 'package:flame/components/parallax_component.dart';
import 'package:flame/components/text_component.dart';
import 'package:flame/text_config.dart';
import 'package:flame/palette.dart';
import 'package:flame/sprite.dart';

// Palette class used to store common color values
class Palette {
  //static const PaletteEntry black = BasicPalette.black;
  static const PaletteEntry WHITE = BasicPalette.white;
  //static const PaletteEntry GREY  = PaletteEntry(Color(0xFF404040));
  //static const PaletteEntry red   = PaletteEntry(Colors.red);
  static const PaletteEntry GREEN = PaletteEntry(Colors.green);
  //static const PaletteEntry blue  = PaletteEntry(Colors.blue);
} // END of Palette

// text rendering styles
TextConfig regular = TextConfig(color: Palette.WHITE.color);
//TextConfig small   = regular.withFontSize(14.0);
//TextConfig tiny    = regular.withFontSize(12.0);

// Application entry point
void main() => runApp(
  HyperCasualApp()
);

// HyperCasualApp stateless widget class
class HyperCasualApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyper Casual Demo',
      theme: ThemeData(
        primarySwatch: Palette.GREEN.color,
        primaryColor: Palette.GREEN.color,
      ),
      home: SplashScreen(),
    );
  }
} // END of HyperCasualApp

// SplashScreen stateless widget class
class SplashScreen extends StatelessWidget {
  // FIELDS
  final TextStyle _textNormal = TextStyle(
    fontSize: 16.0,
    color: Palette.GREEN.color
  );
  final TextStyle _textLarge = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    color: Palette.GREEN.color,
  );
  // METHODS
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 160.0),
              child: Text('NOW ENTERING:', style: _textNormal),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32.0),
              child: Text('HYPER CASUAL', style: _textLarge),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 120.0, vertical: 64.0),
              child: RaisedButton(
                color: Palette.GREEN.color,
                textColor: Palette.WHITE.color,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('START'),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => HyperCasualGame().widget
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
} // END of SplashScreen


// BackgroundSprite sprite component class
class BackgroundSprite extends SpriteComponent {
  // FIELDS
  Sprite sprite = new Sprite('background.png');
  // CONSTRUCTOR
  BackgroundSprite(Size size){
    //width = height = size;
    width = size.width;
    height = size.height;
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
} // END of BackgroundSprite


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


// HyperCasualGame class
class HyperCasualGame extends BaseGame {
  // CONSTRUCTOR
  HyperCasualGame() {
    // Enter full screen mode
    //Flame.util.fullScreen();
    // start the game
    _start();
  }
  // METHODS
  _start() async {
    // get the initial screen size
    Size size = await Flame.util.initialDimensions();
    // render background
    add(BackgroundSprite(size));
    //add(PlayerSprite(size.width/4));
    // render welcome text
    add(TextComponent('HYPER CASUAL DEMO', config: regular)
      ..anchor = Anchor.topCenter
      ..x = size.width / 2
      ..y = 96.0
    );
  }
} // END of HyperCasualGame


// EOF

