import 'package:component/entry/entry_bloc.dart';
import 'package:core/model/task.dart';
import 'package:emoji/enums.dart';
import 'package:emoji/twemoji_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';
import 'package:repository/repository.dart';

part 'entry_card.dart';
part 'entry_tile.dart';

class _EntryWidget extends StatelessWidget {
  final Widget child;
  final Task task;

  const _EntryWidget({
    // ignore: unused_element
    super.key,
    required this.task,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => EntryBloc(
          repo: context.read<Repository>(),
          task: task,
        ),
        child: child,
      );
}
