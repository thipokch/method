import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../entry_edit.dart';

class EntryEditPage extends StatelessWidget {
  const EntryEditPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => EntryEditBloc(),
        child: const MtAppPage(
          name: Text("Entry edit"),
          description: Text(""),
          slivers: [
            EntryEditSliver(),
          ],
        ),
      );
}
