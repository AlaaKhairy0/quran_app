import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/strings_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.lightMainBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 28,
              )),
          title: const Text(StringsManager.appTitle),
        ),
        body: Card(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  hadith.title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.white),
                ),
                const Divider(
                  color: Colors.white,
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
