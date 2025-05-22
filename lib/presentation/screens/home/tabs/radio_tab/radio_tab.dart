import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/radio_tab/widgets/radio_item_widget.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(AssetsManager.radio),
        RadioItemWidget(),
      ],
    );
  }
}
