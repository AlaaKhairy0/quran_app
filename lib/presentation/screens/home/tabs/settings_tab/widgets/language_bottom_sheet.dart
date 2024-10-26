import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/provider/language_provider.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // SettingsProvider myProvider = Provider.of(context);
    LanguageProvider languageProvider = Provider.of(context);
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
          InkWell(
            onTap: () {
              languageProvider.changeAppLang('en');
            },
            child: languageProvider.isEnglish()
                ? buildSelectedLanguageWidget(context, 'English')
                : buildUnSelectedLanguageWidget(context, 'English'),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              languageProvider.changeAppLang('ar');
            },
            child: !(languageProvider.isEnglish())
                ? buildSelectedLanguageWidget(context, 'العربية')
                : buildUnSelectedLanguageWidget(context, 'العربية'),
          ),
        ],
      ),
    );
  }

  Widget buildSelectedLanguageWidget(
      BuildContext context, String selectedLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedLanguage,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Icon(
          Icons.check,
        ),
      ],
    );
  }

  Widget buildUnSelectedLanguageWidget(
      BuildContext context, String unSelectedLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          unSelectedLanguage,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
