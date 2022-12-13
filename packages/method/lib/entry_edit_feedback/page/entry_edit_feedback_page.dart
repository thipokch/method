import 'package:flutter/material.dart';
import 'package:method/entry_edit/page/entry_edit_page_base.dart';
import 'package:method/entry_edit_feedback/view/view.dart';
import 'package:method_style/method_style.dart';

class EntryEditFeedbackPage extends StatelessWidget {
  const EntryEditFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) => const EntryEditPageBase(
        name: Text("How was the session?"),
        description: Text("Was it helpful?"),
        slivers: [
          // SliverToBoxAdapter(
          //   child: DefinitionCardEdit.basic(
          //     taskDefinition: note,
          //     entryDefinition: entryAt(0),
          //     onChanged: (value) => onNoteChange(definitionAt(0), value),
          //     // showMeta: false,
          //     // isStatic: true,
          //   ),
          // ),

          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: MtSpaces.M),
            sliver: EntryEditFeedbackLabelSliver(),
          ),

          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: MtSpaces.M),
            sliver: EntryEditFeedbackTopicSliver(),
          ),

          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: MtSpaces.M),
            sliver: EntryEditFeedbackNoteSliver(),
          ),
        ],
      );
}
