import 'package:fastfood/core/components/theme_app.dart';
import 'package:fastfood/routes/Myroutes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Myroutes _myroute = Myroutes();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Theme_app.theme_app,
      initialRoute: '/splash',
      onGenerateRoute: _myroute.onGenerateRoute,
    );
  }
}