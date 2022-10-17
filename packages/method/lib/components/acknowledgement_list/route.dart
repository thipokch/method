import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/acknowledgement_list/component.dart';

class AcknowledgementListRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => AcknowledgementsList.page;
}
