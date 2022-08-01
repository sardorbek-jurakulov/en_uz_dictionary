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
            return Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wordDetails[index].wordInUzbek,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF303f9d),
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    (wordDetails[index].wordInEnglish.isEmpty)
                        ? "not translated"
                        : wordDetails[index].wordInEnglish,
                    style: TextStyle(
                      color: (wordDetails[index].wordInEnglish.isEmpty)
                          ? Color(0xFFCCCCCC)
                          : Color(0xFFfa9807),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: (wordDetails[index].wordInEnglish.isEmpty)
                          ? FontStyle.italic
                          : FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    wordDetails[index].wordDifinitionInUzbek,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.volume_down,
            color: Color(0xFF757575),
            size: 55,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      ),
    );
  }
}
