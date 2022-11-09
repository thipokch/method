import 'package:method_core/abstract/identify.dart';
import 'package:method_core/abstract/locate.dart';

mixin Uniform on Identify, Locate {
  String get uniformString => "$collectionSlug/$hierarchyPath/$id";
}
