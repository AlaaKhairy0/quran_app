import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran_app/core/services/models/radio_response/RadioResponse.dart';
import 'package:quran_app/core/services/models/radio_response/Radio_dto.dart';

class ApiManager {
  static Future<List<RadioDto>> getRadioList() async {
    http.Response response =
        await http.get(Uri.parse('https://mp3quran.net/api/v3/radios'));
    var json = jsonDecode(response.body);
    return RadioResponse.fromJson(json).radios ?? [];
  }
}
