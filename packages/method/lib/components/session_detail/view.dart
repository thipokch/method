import 'package:flutter/material.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/util/list.dart';

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

  int get itemCount => session.template.definitions.length;

  IndexedWidgetBuilder get itemBuilder => (context, index) {
        final entry = session.definitions.elementAtOrNull(index);

        return Text(entry?.template.name ?? "Null");
        // return EntryPreview.create(task: entry.template, entry: entry);
      };
}
