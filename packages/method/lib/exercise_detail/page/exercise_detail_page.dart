import 'package:flutter/material.dart';
import 'package:method_ui/button/button_filled.dart';
import 'package:method_ui/emoji/emoji.dart';
import 'package:method_ui/page/art_page.dart';

import '../exercise_detail.dart';

class ExerciseDetailPage extends StatelessWidget {
  const ExerciseDetailPage({super.key});

  @override
  Widget build(BuildContext context) => MtArtPage(
        emoji: ExerciseDetailSelector<String>(
          selector: (state) => state.exercise?.icon ?? "",
          builder: (context, state) => MtEmoji(emoji: state),
        ),
        name: ExerciseDetailSelector<String>(
          selector: (state) => state.exercise?.name ?? "",
          builder: (context, state) => Text(state),
        ),
        description: ExerciseDetailSelector<String>(
          selector: (state) => state.exercise?.description ?? "",
          builder: (context, state) => Text(state),
        ),
        action: const ButtonFilled(
          // onPressed: Session,
          child: Text("Start"),
        ),
        // description: Text(""),
        slivers: const [
          ExerciseDetailSliver(),
        ],
      );
}
