import "package:flutter/material.dart";

class WordDetailsPage extends StatelessWidget {
  const WordDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    // List<Map> args = [];
    // args.add(ModalRoute.of(context)!.settings.arguments as Map<String, String>);
    // List<Word> wordDetails = [];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: args.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(args["wordInUzbek"]),
                Text(args["wordInEnglish"]),
                Text(args["wordDifinitionInUzbek"]),
              ],
            );
          },
        ),
      ),
    );
  }
}
