import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import "package:moc_dictionary/models/word_model.dart";

class WordsListPage extends StatelessWidget {
  WordsListPage({Key? key}) : super(key: key);

  List<Word> words = [
    Word("avans", "", "maqsadga muvofiq ravishda oldinga siljish."),
    Word("agent", "agent",
        "Boshqa shaxs yoki guruh nomidan ish yurituvchi shaxs."),
    Word("agentlik operatsiyalari", "agent operations",
        "agentliklar aro bo'ladigan shartnomalar, bitimlar, kelishuvlar va boshqa holatlar."),
    Word("agrar munosabatlar", "agrarian relations",
        "agrar sohada kuzatiladigan turli hil munosabatlar, yig'ilishlar, kelishuvlar, mahorat darslari."),
    Word("agrobiznes", "agrobusiness",
        "agrobiznes yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("agrofirma", "agrofirm",
        "agrofirma yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("agrosanoat birlashmasi", "agroindustry associations",
        "agrosanoat bisrlashmasi yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("aholi daromadlari", "population incomes",
        "aholi daromadlari yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("akkreditiv", "letter of credit",
        "bank yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("amaki", "uncle",
        "amaki yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("aqilli", "clever",
        "aqilli yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("amaliyot dasturi", "internship program",
        "amaliyot dasturi yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("ahmoq", "stupid",
        "ahmoq yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("aldamoq", "cheat",
        "aldamoq yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
    Word("bilimli", "knowledgeable",
        "bilimli yoki omonat banklarining biror shaxs yoki tashkilotga ma'lum miqdordagi mablag'ni berish haqida boshqa bank yoki kassaga yuborgan buyruq qog'ozi, masalan, jamg'armalar bankiga qo'yilgan pulni istalgan omonat bankidan olish uchun berilgan hujjat."),
  ];

  @override
  Widget build(BuildContext context) {
    /**************************************************************************/

    Widget createWordItem(String wordInUzbek, String wordInEnglish,
        String wordDifinitionInUzbek) {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            "/word_details",
            arguments: {
              "wordInUzbek": wordInUzbek,
              "wordInEnglish": wordInEnglish,
              "wordDifinitionInUzbek": wordDifinitionInUzbek,
            },
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                wordInUzbek,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
              Text(
                (wordInEnglish.isNotEmpty) ? wordInEnglish : "not translated",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.6,
                  color: (wordInEnglish.isNotEmpty)
                      ? const Color(0xFF222222)
                      : const Color(0xFFAAAAAA),
                  fontStyle: (wordInEnglish.isNotEmpty)
                      ? FontStyle.normal
                      : FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      );
    }

    /**************************************************************************/

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(),
                    //     labelText: "Qidiruv...",
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Qidiruv...",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(CupertinoIcons.mic_solid)),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          CupertinoIcons.arrow_2_circlepath,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                createWordItem(
                  words[index].wordInUzbek,
                  words[index].wordInEnglish,
                  words[index].wordDifinitionInUzbek,
                ),
                const Divider(
                  height: 5,
                  thickness: 1,
                  color: Color(0xFFCCCCCC),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
