// ignore_for_file: no-empty-block

import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:matter/button/button_action.dart';

import '../preview_helper.dart';
import 'button_elevated.dart';
import 'button_filled.dart';
import 'button_outlined.dart';
import 'button_text.dart';
import 'button_tonal.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const Widget _divider = Preview.rowDivider;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: const [
            ButtonsWithoutIcon(isDisabled: false),
            _divider,
            ButtonsWithIcon(),
            _divider,
            ButtonsWithoutIcon(isDisabled: true),
          ],
        ),
        _divider,
        const ButtonAction(),
        _divider,
        const FloatingActionButtons(),
      ],
    );
  }
}

class ButtonsWithoutIcon extends StatelessWidget {
  final bool isDisabled;

  const ButtonsWithoutIcon({super.key, required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonElevated(
          onPressed: isDisabled ? null : () {},
          child: const Text("Elevated"),
        ),
        Preview.colDivider,
        ButtonFilled(
          onPressed: isDisabled ? null : () {},
          child: const Text('Filled'),
        ),
        Preview.colDivider,
        ButtonTonal(
          onPressed: isDisabled ? null : () {},
          child: const Text('Filled Tonal'),
        ),
        Preview.colDivider,
        ButtonOutlined(
          onPressed: isDisabled ? null : () {},
          child: const Text("Outlined"),
        ),
        Preview.colDivider,
        ButtonText(
          onPressed: isDisabled ? null : () {},
          child: const Text("Text"),
        ),
      ],
    );
  }
}

class ButtonsWithIcon extends StatelessWidget {
  const ButtonsWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ButtonElevated.icon(
          onPressed: () {},
          icon: const Icon(ElementIcon.add),
          label: const Text("Icon"),
        ),
        Preview.colDivider,
        ButtonFilled.icon(
          onPressed: () {},
          icon: const Icon(ElementIcon.add),
          label: const Text('Icon'),
        ),
        Preview.colDivider,
        ButtonTonal.icon(
          onPressed: () {},
          icon: const Icon(ElementIcon.add),
          label: const Text('Icon'),
        ),
        Preview.colDivider,
        ButtonOutlined.icon(
          onPressed: () {},
          icon: const Icon(ElementIcon.add),
          label: const Text(" Icon"),
        ),
        Preview.colDivider,
        ButtonText.icon(
          onPressed: () {},
          icon: const Icon(ElementIcon.add),
          label: const Text("Icon"),
        ),
      ],
    );
  }
}

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const Widget _divider = Preview.rowDivider;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            child: const Icon(ElementIcon.add),
          ),
          _divider,
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(ElementIcon.add),
          ),
          _divider,
          FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(ElementIcon.add),
            label: const Text("Create"),
          ),
          _divider,
          FloatingActionButton.large(
            onPressed: () {},
            child: const Icon(ElementIcon.add),
          ),
        ],
      ),
    );
  }
}
