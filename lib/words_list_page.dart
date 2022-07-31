import "package:flutter/material.dart";

class WordsListPage extends StatelessWidget {
  const WordsListPage({Key? key}) : super(key: key);

  Widget createWordItem() {
    return Column(
      children: [
        Text(""),
        Text(""),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 0,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              createWordItem(),
              const Divider(
                height: 5,
                thickness: 2,
                color: Color(0xFFCCCCCC),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
