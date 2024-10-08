import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manager.dart';
import 'package:quran_app/core/strings_manager.dart';

class QuranHeaderWidget extends StatelessWidget {
  const QuranHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 3,
            color: ColorsManager.goldenColor,
          ),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  StringsManager.versesNumberLabel,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
              child: Text(
                StringsManager.chapterNameLabel,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
