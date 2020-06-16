import 'package:bloc/bloc.dart';
import 'package:felangel_flutter_infinite_list/bloc/bloc_delegate.dart';
import 'package:felangel_flutter_infinite_list/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Infinite Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: HomePage(),
      ),
    );
  }
}
