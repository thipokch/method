import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/page/page.dart';

import '../license_detail.dart';

class LicenseDetailPage extends StatelessWidget {
  const LicenseDetailPage({super.key});

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: Text(context.read<LicenseDetailBloc>().packageName),
        // description: Text(""),
        slivers: const [
          SliverPadding(
            padding: EdgeInsets.all(ElementScale.spaceM),
            sliver: LicenseDetailSliver(),
          ),
        ],
      );
}
