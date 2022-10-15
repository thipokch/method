import 'package:flutter/material.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/session.dart';

class SessionDetailSliver extends StatelessWidget with _SessionDetailList {
  @override
  final Session session;

  const SessionDetailSliver({
    super.key,
    required this.session,
  });

  @override
  Widget build(BuildContext context) => SliverList(
        delegate:
            SliverChildBuilderDelegate(childCount: itemCount, itemBuilder),
      );
}

class SessionDetailView extends StatelessWidget with _SessionDetailList {
  @override
  final Session session;

  const SessionDetailView({
    super.key,
    required this.session,
  });

  @override
  Widget build(BuildContext context) =>
      ListView.builder(itemCount: itemCount, itemBuilder: itemBuilder);
}

mixin _SessionDetailList {
  Session get session;

  int get itemCount => session.definitions.whereType<Entry>().length;

  IndexedWidgetBuilder get itemBuilder => (context, index) {
        final entry = session.definitions.elementAt(index)!;

        return Text(entry.template.name);
        // return EntryPreview.create(task: entry.template, entry: entry);
      };
}
