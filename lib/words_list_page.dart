import "package:flutter/material.dart";

class WordsListPage extends StatelessWidget {
  const WordsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 0,
          itemBuilder: (BuildContext context, int index) {
            return Column();
          },
        ),
      ),
    );
  }
}
