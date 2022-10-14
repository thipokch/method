import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/acknowledgement_list/view.dart';
import 'package:method_ui/page/page.dart';

class AcknowledgementListRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: "Acknowledgements",
        description: "",
        slivers: [
          AcknowledgementsSliverList(),
        ],
      );
}
