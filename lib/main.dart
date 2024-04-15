import 'package:flutter/material.dart';
import 'app/views/home.dart';
import 'app/views/choose_location.dart';
import 'app/views/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
