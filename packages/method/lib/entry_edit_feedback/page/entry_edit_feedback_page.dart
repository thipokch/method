import 'package:flutter/material.dart';
import 'package:method/entry_edit/page/entry_edit_page_base.dart';
import 'package:method/entry_edit_feedback/view/view.dart';
import 'package:method_style/element_scale.dart';

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

          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: EdgeInsets.all(ElementScale.spaceM),
              sliver: EntryEditFeedbackLabelSliver(),
            ),
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: EdgeInsets.all(ElementScale.spaceM),
              sliver: EntryEditFeedbackTopicSliver(),
            ),
          ),
        ],
      );
}
