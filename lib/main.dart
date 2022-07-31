import 'package:flutter/material.dart';
import "package:moc_dictionary/words_list_page.dart";
import 'package:moc_dictionary/word_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => WordsListPage(),
        "/word_details": (context) => WordDetailsPage(),
      },
      initialRoute: "/",
      // home: WordsListPage(),
    );
  }
}
