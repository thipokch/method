import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:method/components/loading/view.dart';
import 'package:method/route/routes.dart';
import 'package:method/util/future/future_provider.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/page/page.dart';
import 'package:provider/provider.dart';

import '../../services/license/service.dart';
import '../acknowledgement_detail/route.dart';

part 'page.dart';
part 'view.dart';

class AcknowledgementsList {
  AcknowledgementsList._();

  static Widget page = _Page();
  static Widget sliver = FutureSwitcher<LicenseData>(
    futureBuilder: (_) => _.read<LicenseService>().licenses,
    onWait: const LoadingSliver(),
    onError: (_) => const CupertinoActivityIndicator(),
    onData: (data) => _Sliver(license: data),
  );
}
