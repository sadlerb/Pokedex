import 'package:pokedex/pages/home.dart';
import 'package:pokedex/pages/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
      },
    ));
