import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/acknowledgement_detail/component.dart';

class AcknowledgementDetailRoute extends GoRouteData {
  final String id;

  const AcknowledgementDetailRoute({
    required this.id,
  });

  @override
  Widget build(BuildContext context) =>
      AcknowledgementsDetail.page(packageName: id);
}
