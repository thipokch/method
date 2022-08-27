part of 'pairing_scroll_controller.dart';

class PairingScrollController extends PrimaryScrollController {
  final ParingScrollControllerGroup group;

  PairingScrollController({
    Key? key,
    required this.group,
    required super.child,
  }) : super(
          key: key,
          controller: group._mirror,
        );

  factory PairingScrollController.createGroup({
    required Widget child,
  }) =>
      PairingScrollController(
        group: ParingScrollControllerGroup(),
        child: child,
      );

  static ParingScrollControllerGroup? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<PairingScrollController>()
      ?.group;

  @override
  bool updateShouldNotify(PairingScrollController oldWidget) =>
      group._mirror != oldWidget.group._mirror &&
      group._offsetNotifier != oldWidget.group._offsetNotifier &&
      !listEquals(group._actors, oldWidget.group._actors);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ParingScrollControllerGroup>(
      'group',
      group,
      ifNull: 'no controller',
      showName: false,
    ));
  }
}

// @override
// bool updateShouldNotify(ParingScrollControllerGroup oldWidget) =>
//     _mirror != oldWidget._mirror &&
//     _offsetNotifier != oldWidget._offsetNotifier &&
//     !listEquals(_actors, oldWidget._actors);
