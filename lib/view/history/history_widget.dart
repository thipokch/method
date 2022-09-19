import 'package:component/history/history_bloc.dart';
import 'package:core/model/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/content/content.dart';
import 'package:repository/repository.dart';

part 'history_list.dart';

class _HistoryWidget extends StatelessWidget {
  final Widget child;
  final Repository repo;

  const _HistoryWidget({
    // ignore: unused_element
    super.key,
    required this.repo,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HistoryBloc(repo: repo),
        child: child,
      );
}
