import "package:flutter/material.dart";
import "package:moc_dictionary/models/word_model.dart";

class WordsListPage extends StatelessWidget {
  WordsListPage({Key? key}) : super(key: key);

  List<Word> words = [
    Word("avans", "", "bank"),
  ];

  Widget createWordItem(
      String wordInUzbek, String wordInEnglish, String wordDifinitionInUzbek) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Text(wordInUzbek),
          Text((wordInEnglish.isNotEmpty) ? wordInEnglish : "not translated"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              createWordItem(
                words[index].wordInUzbek,
                words[index].wordInEnglish,
                words[index].wordDifinitionInUzbek,
              ),
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
