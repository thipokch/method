import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../entry.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => EntryBloc(),
        child: const MtAppPage(
          name: Text("Entry"),
          description: Text(""),
          slivers: [
            EntrySliver(),
          ],
        ),
      );
}
