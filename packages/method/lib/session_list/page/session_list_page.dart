import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/home/home.dart';
import 'package:method_ui/page/page.dart';

import '../session_list.dart';

class SessionListPage extends StatelessWidget {
  const SessionListPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SessionListBloc(
          navigator: HomeRoute.navigator,
          repository: context.read(),
          analytics: context.read(),
        )..add(const SessionListEvent.start()),
        child: const MtAppPage(
          name: Text("Session list"),
          description: Text(""),
          slivers: [
            SessionListSliver(),
          ],
        ),
      );
}
