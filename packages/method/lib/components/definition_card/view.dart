// ignore_for_file: unused_element

part of 'component.dart';

class _View extends StatelessWidget with DefinitionEdit {
  @override
  final TaskDefinition taskDefinition;

  @override
  final EntryDefinition? entryDefinition;

  final TextEditingController? controller;
  final bool isStatic;
  final bool showMeta;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  const _View({
    required this.taskDefinition,
    required this.entryDefinition,
    this.showMeta = true,
    this.isStatic = false,
    this.onTap,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) => MtEditingCard(
        controller: controller,
        title: taskDefinition.name,
        description: taskDefinition.description,
        emoji: taskDefinition.icon,
        showMeta: showMeta,
        isStatic: isStatic,
        isSelected: isSelected,
        onTap: onTap,
        onChanged: onChanged,
      );
}
