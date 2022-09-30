import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:method_emoji/enums.dart';
import 'package:method_emoji/twemoji_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

part 'entry_card.dart';
part 'entry_tile.dart';

class _EntryWidget extends StatelessWidget {
  final Widget child;
  final Task task;
  final Entry? entry;

  const _EntryWidget({
    // ignore: unused_element
    super.key,
    required this.task,
    required this.entry,
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
