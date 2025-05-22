import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/provider/radio_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

import '../../../../../../core/colors_manager.dart';

class RadioItemWidget extends StatelessWidget {
  const RadioItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RadioProvider()..getRadioList(),
      builder: (context, child) {
        var radioProvider = Provider.of<RadioProvider>(context);
        ThemeProvider themeProvider = Provider.of(context);
        if (radioProvider.isLoading == true) {
          return CircularProgressIndicator(
            color: themeProvider.isLightTheme()
                ? Theme.of(context).primaryColor
                : ColorsManager.yellow,
          );
        }
        return Column(
          children: [
            Text(
              radioProvider.radioList[radioProvider.currentIndex].name ?? '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    radioProvider.prev();
                  },
                  icon: Icon(
                    Icons.skip_previous,
                    color: themeProvider.isLightTheme()
                        ? ColorsManager.lightPrimary
                        : ColorsManager.yellow,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    radioProvider.play();
                  },
                  icon: Icon(
                    radioProvider.isPlay ? Icons.pause : Icons.play_arrow,
                    color: themeProvider.isLightTheme()
                        ? ColorsManager.lightPrimary
                        : ColorsManager.yellow,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    radioProvider.next();
                  },
                  icon: Icon(
                    Icons.skip_next,
                    color: themeProvider.isLightTheme()
                        ? ColorsManager.lightPrimary
                        : ColorsManager.yellow,
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
