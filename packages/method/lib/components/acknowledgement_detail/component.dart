import 'dart:developer' show Timeline, Flow;

import 'package:flutter/material.dart' hide Flow;
import 'package:method_ui/page/page.dart';
import 'package:provider/provider.dart';
import 'package:method_style/element_scale.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';

import '../../services/license/service.dart';

part 'page.dart';
part 'view.dart';

class AcknowledgementsDetail {
  const AcknowledgementsDetail._();

  static view({required String packageName}) => _View(packageName: packageName);
  static page({required String packageName}) => _Page(packageName: packageName);
}
