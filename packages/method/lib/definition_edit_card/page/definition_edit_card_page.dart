import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../definition_edit_card.dart';

class DefinitionEditCardPage extends StatelessWidget {
  const DefinitionEditCardPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => DefinitionEditCardBloc(),
        child: const MtAppPage(
          name: Text("Definition edit card"),
          description: Text(""),
          slivers: [
            DefinitionEditCardSliver(),
          ],
        ),
      );
}
