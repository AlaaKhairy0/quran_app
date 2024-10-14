import 'package:flutter/material.dart';
import 'package:quran_app/core/strings_manager.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 6,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 3,
            ),
          ),
        ),
        child: Text(
          StringsManager.hadithHeader,
          style: Theme.of(context).textTheme.labelMedium,
        ));
  }
}
