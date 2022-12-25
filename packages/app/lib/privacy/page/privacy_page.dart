import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_style/method_style.dart';

import '../privacy.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PrivacyBloc(),
        child: const MtAppPage(
          name: Text("Privacy Policy"),
          slivers: [
            PrivacySliver(),
          ],
        ),
      );
}
