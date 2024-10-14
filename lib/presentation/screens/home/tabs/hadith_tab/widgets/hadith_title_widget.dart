import 'package:flutter/material.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.hadithDetailsRoute,
            arguments: hadith);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
