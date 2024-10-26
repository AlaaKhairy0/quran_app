import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 3,
            ),
          ),
        ),
        child: Text(
          AppLocalizations.of(context)!.ahadith,
          style: Theme.of(context).textTheme.labelMedium,
        ));
  }
}
