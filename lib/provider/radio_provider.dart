import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/core/services/api_manager/api_manager.dart';
import 'package:quran_app/core/services/models/radio_response/Radio_dto.dart';

class RadioProvider extends ChangeNotifier {
  List<RadioDto> radioList = [];
  bool isLoading = true;
  final player = AudioPlayer();
  int currentIndex = 0;
  bool isPlay = false;

  Future<void> getRadioList() async {
    try {
      var res = await ApiManager.getRadioList();
      radioList = res;
      isLoading = false;
    } catch (e) {
      log(e.toString());
      isLoading = false;
    }
    notifyListeners();
  }

  play() {
    if (player.state == PlayerState.playing) {
      player.pause();
      isPlay = false;
    } else if (player.state == PlayerState.paused) {
      player.resume();
      isPlay = true;
    } else {
      player.play(UrlSource(radioList[currentIndex].url ?? ''));
      isPlay = true;
    }
    notifyListeners();
  }

  next() {
    if (currentIndex == radioList.length - 1) {
      currentIndex = 0;
    } else {
      currentIndex++;
    }
    player.stop();
    player.play(UrlSource(radioList[currentIndex].url ?? ''));
    isPlay = true;
    notifyListeners();
  }

  prev() {
    if (currentIndex == 0) {
      currentIndex = 0;
    } else {
      currentIndex--;
    }
    player.stop();
    player.play(UrlSource(radioList[currentIndex].url ?? ''));
    isPlay = true;
    notifyListeners();
  }
}
