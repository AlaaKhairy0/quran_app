import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manager.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double rotationAngle = 0.0;
  int counter = 0;
  int tasbeehIndex = 0;
  List<String> tsabeeh = [
    'سبحان الله',
    'الحمدلله',
    'لا اله الا الله',
    'الله اكبر'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 11,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  AssetsManager.sebhaHeadLogo,
                  height: MediaQuery.of(context).size.height * .15,
                ),
                Positioned(
                  top: 88,
                  child: Transform.rotate(
                    angle: rotationAngle,
                    child: Image.asset(
                      height: MediaQuery.of(context).size.height * .28,
                      AssetsManager.sebhaBodyLogo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(AppLocalizations.of(context)!.tsbehNumber,
              style: Theme.of(context).textTheme.labelSmall),
          const Spacer(
            flex: 1,
          ),
          IntrinsicWidth(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: ColorsManager.goldenColor.withOpacity(.57),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '$counter',
                style: const TextStyle(fontSize: 22, color: Colors.black),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          InkWell(
            onTap: tasbeehCount,
            child: IntrinsicWidth(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorsManager.goldenColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(tsabeeh[tasbeehIndex]),
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }

  void tasbeehCount() {
    ++counter;
    if (counter > 33) {
      counter = 0;
      tasbeehIndex++;
      if (tasbeehIndex > 3) {
        tasbeehIndex = 0;
      }
    }
    setState(() {
      rotationAngle += .25;
    });
  }
}
