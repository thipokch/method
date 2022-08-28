part of 'pairing_scroll_controller.dart';

class PairingScrollController extends PrimaryScrollController {
  final PairingScrollControllerGroup group;

  PairingScrollController({
    Key? key,
    required this.group,
    required super.child,
  }) : super(
          key: key,
          controller: group._mirror,
        );

  static PairingScrollControllerGroup? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<PairingScrollController>()
      ?.group;

  @override
  bool updateShouldNotify(PairingScrollController oldWidget) =>
      group._mirror != oldWidget.group._mirror ||
      group._offsetNotifier != oldWidget.group._offsetNotifier ||
      !listEquals(group._actors, oldWidget.group._actors);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<PairingScrollControllerGroup>(
      'group',
      group,
      ifNull: 'no controller',
      showName: false,
    ));
  }
}
