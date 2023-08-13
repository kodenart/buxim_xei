import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

mixin ReadJsonFiles {
  Future<Map> readJsonFile(String rootAsset) async {
    var input = await rootBundle.loadString(rootAsset);
    var map = jsonDecode(input);
    // print(input);
    return map;
  }
}
