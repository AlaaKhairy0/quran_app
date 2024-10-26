import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:quran_app/provider/hadith_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    ChangeNotifierProvider(
        create: (context) => HadithProvider(), child: HadithTab()),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTabIndex,
            onTap: (index) {
              selectedTabIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage(AssetsManager.quranIcon),
                ),
                label: AppLocalizations.of(context)!.quranTab,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage(AssetsManager.hadithIcon),
                ),
                label: AppLocalizations.of(context)!.hadithTab,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage(AssetsManager.sebhaIcon),
                ),
                label: AppLocalizations.of(context)!.sebhaTab,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage(AssetsManager.radioIcon),
                ),
                label: AppLocalizations.of(context)!.radioTab,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settingsTab,
              ),
            ]),
        body: tabs[selectedTabIndex],
      ),
    );
  }
}
