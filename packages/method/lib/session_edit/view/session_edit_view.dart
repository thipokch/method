import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit/view/entry_edit_view.dart';
import 'package:method/session_edit/logic/logic.dart';
import 'package:method_core/abstract/present.dart';
import 'package:method_core/model/session.dart';
import 'package:method_kit/method_kit.dart';
import 'package:method_style/element_color.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/float/float_scaffold.dart';

part 'session_edit_sliver.dart';

class SessionEditView extends StatelessWidget {
  const SessionEditView({super.key});

  @override
  Widget build(BuildContext context) => const _Editor();
}

class _Editor extends StatelessWidget {
  const _Editor();

  @override
  Widget build(BuildContext context) => FutureBuilder<Exercise>(
        future: rootBundle
            .loadString('packages/method_kit/assets/example.json')
            .then((value) {
          print(json.decode(value));
          return Exercise.fromJson(json.decode(value));
        }),
        builder: (context, snapshot) {
          print(snapshot.data);

          return snapshot.hasData
              ? MethodKit(
                  exercise: snapshot.data!,
                  onResult: (value) => print(value),
                )
              : const CupertinoActivityIndicator();
        },
      );
}
