import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';
import 'package:quran_app/provider/hadith_provider.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  // List<Hadith> ahadith = [];
  @override
  Widget build(BuildContext context) {
    HadithProvider hadithProvider = Provider.of(context);
    if (hadithProvider.ahadith.isEmpty) hadithProvider.readAhadithFile();
    return Center(
      child: Column(
        children: [
          Image.asset(AssetsManager.hadithLogo),
          HadithHeaderWidget(),
          hadithProvider.ahadith.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).dividerColor,
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                    return HadithTitleWidget(
                        hadith: hadithProvider.ahadith[index]);
                  },
                  itemCount: hadithProvider.ahadith.length,
                ))
        ],
      ),
    );
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
