import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_style/method_style.dart';

import '../session_list.dart';

class SessionListPage extends StatelessWidget {
  const SessionListPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SessionListBloc(
          navigator: context.read(),
          repository: context.read(),
          analytics: context.read(),
        )..add(const SessionListEvent.start()),
        child: const MtAppPage(
          name: Text("Timeline"),
          // description: Text(""),
          slivers: [
            SessionListSliver(),
          ],
        ),
      );
}
