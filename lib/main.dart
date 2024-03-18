import 'package:flutter/material.dart';
import 'app/views/home.dart';
import 'app/views/chooseLocation.dart';
import 'app/views/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
