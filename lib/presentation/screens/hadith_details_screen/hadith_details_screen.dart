import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/provider/theme_provider.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    // SettingsProvider myProvider = Provider.of(context);
    ThemeProvider themeProvider = Provider.of(context);
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
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: Card(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  hadith.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Divider(
                  color: Theme.of(context).indicatorColor,
                  thickness: 1,
                  indent: 40,
                  endIndent: 40,
                ),
                Text(
                  hadith.content,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
