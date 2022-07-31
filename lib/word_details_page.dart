import "package:flutter/material.dart";
import "package:moc_dictionary/models/word_model.dart";

class WordDetailsPage extends StatelessWidget {
  const WordDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    // List<Map> args = [];
    // args.add(ModalRoute.of(context)!.settings.arguments as Map<String, String>);
    List<Word> wordDetails = [
      Word(args["wordInUzbek"], args["wordInEnglish"],
          args["wordDifinitionInUzbek"]),
    ];
    int lengthOfWordDetails = wordDetails.length;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: lengthOfWordDetails,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(wordDetails[index].wordInUzbek),
                Text(wordDetails[index].wordInEnglish),
                Text(wordDetails[index].wordDifinitionInUzbek),
              ],
            );
          },
        ),
      ),
    );
  }
}
