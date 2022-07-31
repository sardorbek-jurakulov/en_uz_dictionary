import "package:flutter/material.dart";

class WordDetailsPage extends StatelessWidget {
  const WordDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as Map;
    List<Map> args = [];
    args.add(ModalRoute.of(context)!.settings.arguments as Map<String, String>);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: args.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(args[index]["wordInUzbek"]),
                Text(args[index]["wordInEnglish"]),
                Text(args[index]["wordDifinitionInUzbek"]),
              ],
            );
          },
        ),
      ),
    );
  }
}
