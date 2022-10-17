part of 'component.dart';

class _View extends StatelessWidget {
  final String name;
  final String version;
  final String buildInfo;

  const _View({
    required this.name,
    required this.version,
    required this.buildInfo,
  });

  // ignore: long-parameter-list
  _appInfoView({
    required BuildContext context,
    required String name,
    required String version,
    required String buildInfo,
    Widget? icon,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 72.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.start,
            ),
            if (icon != null)
              IconTheme(data: Theme.of(context).iconTheme, child: icon),
            if (version != '')
              Padding(
                padding: const EdgeInsets.only(bottom: ElementScale.spaceM),
                child: Text(
                  version,
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.start,
                ),
              ),
            if (buildInfo != '')
              Text(
                buildInfo,
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.start,
              ),
            const SizedBox(height: 16),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) => snapshot.hasData
            ? _appInfoView(
                context: context,
                name: snapshot.data!.appName.toLowerCase(),
                version: snapshot.data!.version,
                buildInfo: snapshot.data!.buildNumber,
              )
            : const CupertinoActivityIndicator(),
      );
}
