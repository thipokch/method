import 'dart:convert';

extension Encode on Map<String, dynamic> {
  String encode() => jsonEncode(this);
}
