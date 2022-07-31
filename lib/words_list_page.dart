import "package:flutter/material.dart";
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
            horizontal: 5,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                wordInUzbek,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              Text((wordInEnglish.isNotEmpty)
                  ? wordInEnglish
                  : "not translated"),
            ],
          ),
        ),
      );
    }

    /**************************************************************************/

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
