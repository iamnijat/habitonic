import 'dart:convert';
import 'package:flutter/widgets.dart';

abstract class EmojisUtil {
  const EmojisUtil._();

  static Future<List<String>> fetchEmojis(
    BuildContext context,
  ) async {
    List<String> _emojisList = <String>[];
    Iterable<dynamic> _iterableData;
    await DefaultAssetBundle.of(context)
        .loadString('assets/i18n/emojis.json')
        .then((value) {
      /// we use await here because the loading of jsons can take time
      _iterableData = _convertJsonValueToIterable(value);
      _emojisList = _convertMapToList(_iterableData);
    });

    return _emojisList;
  }

  static List<String> _convertMapToList(Iterable<dynamic> _elements) {
    final List<String> _emojisList;
    _emojisList = _elements
        .map((element) {
          return element;
        })
        .cast<String>()
        .toList();
    return _emojisList;
  }

  static Iterable<dynamic> _convertJsonValueToIterable(String _value) {
    final Map<String, dynamic> _list;
    _list = json.decode(_value);
    final Iterable<dynamic> _data = _list.values;
    return _data;
  }
}
