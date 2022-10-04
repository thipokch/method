import 'package:card_swiper/card_swiper.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/art_page.dart';
import 'package:method/view/session_list/session_list_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:method_repo/repository.dart';

import '../entry/entry_widget.dart';
import '../entry/entry_editor.dart';

part 'session_page.dart';
part 'session_editor.dart';

class _Session extends StatelessWidget {
  final Widget child;
  final Exercise exercise;
  final Session? session;
  final ThemeData? theme;

  const _Session({
    required this.exercise,
    required this.session,
    this.theme,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => SessionBloc(
            repo: context.read<Repository>(),
            exercise: exercise,
          )),
      child: child,
    );

    // return theme == null
    //     ? ThemeImageShader.setPrimaryEmoji(
    //         emoji: exercise.icon,
    //         child: bloc,
    //       )
    //     : Theme(data: theme!, child: bloc);
  }
}
