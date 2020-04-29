import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sgn/screens/home_screen/home_screen.dart';
import 'package:sgn/stores/news_store.dart';
import 'package:sgn/theme.dart';


void main() {
  runApp( MultiProvider(
    providers: [Provider(create: (_) => new NewsFeedStore())],
    child: SgnApp(),
  ),);
}

class SgnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: "SGN - Some good news",
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
      },
    );

  }
}

