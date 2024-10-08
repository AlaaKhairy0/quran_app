import 'package:flutter/material.dart';

class QuranItemWidget extends StatelessWidget {
  QuranItemWidget(
      {super.key, required this.versesNumber, required this.suraNames});

  String versesNumber;
  String suraNames;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                versesNumber,
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
              suraNames,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
