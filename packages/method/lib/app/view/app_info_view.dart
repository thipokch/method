import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/element_scale.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';

class AppInfoView extends StatelessWidget {
  const AppInfoView({super.key});

  @override
  Widget build(BuildContext context) => Consumer<PackageInfo?>(
        builder: (context, info, state) => info == null
            ? const CupertinoActivityIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 72.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      info.appName,
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.start,
                    ),
                    if (info.version != '')
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: ElementScale.spaceM),
                        child: Text(
                          info.version,
                          style: Theme.of(context).textTheme.bodyText2,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    if (info.buildNumber != '')
                      Text(
                        info.buildNumber,
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.start,
                      ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
      );
}
