import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedThemeWidget(
            context,
            AppLocalizations.of(context)!.light,
          ),
          const SizedBox(
            height: 12,
          ),
          buildUnSelectedThemeWidget(
            context,
            AppLocalizations.of(context)!.dark,
          ),
        ],
      ),
    );
  }

  Widget buildSelectedThemeWidget(BuildContext context, String selectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Icon(
          Icons.check,
          color: Colors.white,
          size: 28,
        ),
      ],
    );
  }

  Widget buildUnSelectedThemeWidget(
      BuildContext context, String unSelectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          unSelectedTheme,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
        ),
      ],
    );
  }
}
