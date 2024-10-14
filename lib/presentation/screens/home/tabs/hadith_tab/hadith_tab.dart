import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> ahadith = [];

  @override
  Widget build(BuildContext context) {
    if (ahadith.isEmpty) readAhadithFile();
    return Center(
      child: Column(
        children: [
          Image.asset(AssetsManager.hadithLogo),
          const HadithHeaderWidget(),
          ahadith.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                  itemBuilder: (context, index) {
                    return HadithTitleWidget(hadith: ahadith[index]);
                  },
                  itemCount: ahadith.length,
                ))
        ],
      ),
    );
  }

  void readAhadithFile() async {
    String ahadithFile =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadithList = ahadithFile.trim().split('#');
    for (int i = 0; i < ahadithList.length; i++) {
      List<String> hadithItem = ahadithList[i].trim().split('\n');
      String title = hadithItem[0];
      hadithItem.removeAt(0);
      String content = hadithItem.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      ahadith.add(hadith);
      setState(() {});
    }
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
