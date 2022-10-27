import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../definition_edit_label.dart';

class DefinitionEditLabelPage extends StatelessWidget {
  const DefinitionEditLabelPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => DefinitionEditLabelBloc(),
        child: const MtAppPage(
          name: Text("Definition edit label"),
          description: Text(""),
          slivers: [
            DefinitionEditLabelSliver(),
          ],
        ),
      );
}
