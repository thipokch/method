import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/route/route.dart';
import 'package:method/session_edit/route/route.dart';
import 'package:method_core/abstract/present.dart';
import 'package:method_ui/element_color.dart';
import 'package:method_ui/button/button_filled.dart';
import 'package:method_ui/emoji/riso_emoji.dart';
import 'package:method_ui/page/art_page.dart';
import 'package:method_ui/riso/riso_canvas.dart';

import '../exercise_detail.dart';

class ExerciseDetailPage extends StatelessWidget {
  const ExerciseDetailPage({super.key});

  @override
  Widget build(BuildContext context) => ExerciseDetailSelector<Presentation?>(
        selector: (state) => state.exercise?.presentation,
        builder: (context, state) => Theme(
          data: Theme.of(context).copyWith(
            colorScheme: state
                ?.colorScheme(Theme.of(context).brightness)
                .harmonizeWith(Theme.of(context).colorScheme.primary),
          ),
          child: MtArtPage(
            emoji: ExerciseDetailSelector<String?>(
              selector: (state) => state.exercise?.icon,
              builder: (context, state) => state == null
                  ? const CupertinoActivityIndicator()
                  : MtRisoEmoji(shaders: context.read(), emoji: state),
            ),
            name: ExerciseDetailSelector<String>(
              selector: (state) => state.exercise?.name ?? "",
              builder: (context, state) => Text(state),
            ),
            description: ExerciseDetailSelector<String>(
              selector: (state) => state.exercise?.description ?? "",
              builder: (context, state) => Text(state),
            ),
            background: Builder(
              builder: (context) => RisoCanvas(
                shaders: context.read(),
                frame: state?.seed,
                colorLighter: Theme.of(context).colorScheme.tertiaryContainer,
                colorLight: Theme.of(context).colorScheme.secondaryContainer,
                colorDark: Theme.of(context).colorScheme.primaryContainer,
                colorDarker: Theme.of(context).colorScheme.background,
              ),
            ),
            // action: const ButtonFilled(
            //   // onPressed: Session,
            //   child: Text("Start"),
            // ),
            action: ExerciseDetailSelector<String?>(
              selector: (state) => state.exercise?.id,
              builder: (context, id) => ButtonFilled(
                onPressed: id != null
                    ? () => ExerciseStartRoute(id).push(context)
                    : null,
                child: const Text("Start"),
              ),
            ),
            // description: Text(""),
            slivers: const [
              SliverPadding(
                padding: EdgeInsets.all(16.0),
                sliver: ExerciseDetailSliver(),
              ),
            ],
          ),
        ),
      );
}
