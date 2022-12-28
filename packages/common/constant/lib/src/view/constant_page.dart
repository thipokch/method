import 'package:flutter/material.dart';
import 'package:method_constant/constant.dart';

/// {@template constant_page}
/// A description for ConstantPage
/// {@endtemplate}
class ConstantPage extends StatelessWidget {
  /// {@macro constant_page}
  const ConstantPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ConstantView(),
    );
  } 
}
