import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/widgets/quran_item_widget.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/widgets/sura_verses_widget.dart';
import 'package:quran_app/provider/quran_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

import '../../../core/assets_manager.dart';

class QuranDetailsScreen extends StatelessWidget {
   QuranDetailsScreen({super.key});

  // List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    QuranProvider quranProvider = Provider.of(context);
    // SettingsProvider myProvider = Provider.of(context);
    ThemeProvider themeProvider = Provider.of(context);
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (quranProvider.verses.isEmpty)
      quranProvider.readSuraVerses(suraItem.index + 1);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: themeProvider.isLightTheme()
              ? const AssetImage(AssetsManager.lightMainBg)
              : const AssetImage(AssetsManager.darkMainBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            suraItem.suraName,
          ),
        ),
        body: quranProvider.verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).dividerColor,
                ),
              )
            : ListView.builder(
                itemCount: quranProvider.verses.length,
                itemBuilder: (context, index) {
                  return SuraVersesWidget(verse: quranProvider.verses[index]);
                },
              ),
      ),
    );
  }
}
