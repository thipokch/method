import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'identifier.g.dart';

// Not freezed for inheritance
@JsonSerializable()
class Identifier {
  final String id;

  Identifier({String? id}) : id = id ?? uuid();

  static String uuid() => const Uuid().v4();

  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);

  @override
  bool operator ==(other) => other is Identifier && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

mixin IdentifierEquality<I extends Identifier> implements Identifier {
  @override
  bool operator ==(other) => other is I && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
