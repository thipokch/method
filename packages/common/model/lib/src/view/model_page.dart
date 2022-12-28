import 'package:flutter/material.dart';
import 'package:method_model/model.dart';

/// {@template model_page}
/// A description for ModelPage
/// {@endtemplate}
class ModelPage extends StatelessWidget {
  /// {@macro model_page}
  const ModelPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ModelView(),
    );
  } 
}
