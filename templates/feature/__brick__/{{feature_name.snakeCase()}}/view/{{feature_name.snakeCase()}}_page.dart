import 'package:flutter/material.dart';{{#isBloc}}
import 'package:{{{fullPath}}}/logic/logic.dart';{{/isBloc}}{{#isCubit}}
import 'package:{{{fullPath}}}/logic/logic.dart';{{/isCubit}}{{#isProvider}}
import 'package:{{{fullPath}}}/provider/provider.dart';{{/isProvider}}
import 'package:{{{fullPath}}}/view/{{feature_name.snakeCase()}}_view.dart';

/// {@template {{feature_name.snakeCase()}}_page}
/// A description for {{feature_name.pascalCase()}}Page
/// {@endtemplate}
class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_page}
  const {{feature_name.pascalCase()}}Page({super.key});

{{#isBloc}}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{feature_name.pascalCase()}}Bloc(),
      child: const Scaffold(
        body: {{feature_name.pascalCase()}}View(),
      ),
    );
  } {{/isBloc}}{{#isCubit}}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{feature_name.pascalCase()}}Cubit(),
      child: const Scaffold(
        body: {{feature_name.pascalCase()}}View(),
      ),
    );
  } {{/isCubit}} {{#isProvider}}
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => {{feature_name.pascalCase()}}Notifier(),
      child: const Scaffold(
        body: {{feature_name.pascalCase()}}View(),
      ),
    );
  } {{/isProvider}} {{#isNone}}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: {{feature_name.pascalCase()}}View(),
    );
  } {{/isNone}}
}
