part of 'acknowlegements_page.dart';

class AcknowlegementsDetail extends MethodPage {
  final String packageName;
  final List<LicenseEntry> licenseEntries;

  AcknowlegementsDetail({
    Key? key,
    required this.packageName,
    required this.licenseEntries,
    super.trailing,
    super.leading,
    super.controller,
  }) : super(
          key: key,
          title: packageName,
          child: _PackageLicensePage(
            packageName: packageName,
            licenseEntries: licenseEntries,
          ),
        );
}

class _PackageLicensePage extends StatefulWidget {
  const _PackageLicensePage({
    Key? key,
    required this.packageName,
    required this.licenseEntries,
  }) : super(key: key);

  final String packageName;
  final List<LicenseEntry> licenseEntries;

  @override
  _PackageLicensePageState createState() => _PackageLicensePageState();
}

class _PackageLicensePageState extends State<_PackageLicensePage> {
  @override
  void initState() {
    super.initState();
    _initLicenses();
  }

  final List<Widget> _licenses = <Widget>[];
  bool _loaded = false;

  // ignore: long-method
  Future<void> _initLicenses() async {
    int debugFlowId = -1;
    assert(() {
      final Flow flow = Flow.begin();
      // ignore: no-empty-block
      Timeline.timeSync('_initLicenses()', () {}, flow: flow);
      debugFlowId = flow.id;

      return true;
    }());
    for (final LicenseEntry license in widget.licenseEntries) {
      if (!mounted) {
        return;
      }
      assert(() {
        Timeline.timeSync(
          '_initLicenses()',
          // ignore: no-empty-block
          () {},
          flow: Flow.step(debugFlowId),
        );

        return true;
      }());
      final List<LicenseParagraph> paragraphs =
          await SchedulerBinding.instance.scheduleTask<List<LicenseParagraph>>(
        license.paragraphs.toList,
        Priority.animation,
        debugLabel: 'License',
      );
      if (!mounted) {
        return;
      }
      setState(() {
        _licenses.add(const Padding(
          padding: EdgeInsets.all(ElementScale.spaceM),
          child: Divider(),
        ));
        for (final LicenseParagraph paragraph in paragraphs) {
          if (paragraph.indent == LicenseParagraph.centeredIndent) {
            _licenses.add(Padding(
              padding: const EdgeInsets.only(top: ElementScale.spaceM),
              child: Text(
                paragraph.text,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ));
          } else {
            assert(paragraph.indent >= 0);
            _licenses.add(Padding(
              padding: EdgeInsetsDirectional.only(
                top: 8.0,
                start: 16.0 * paragraph.indent,
              ),
              child: Text(paragraph.text),
            ));
          }
        }
      });
    }
    setState(() {
      _loaded = true;
    });
    assert(() {
      // ignore: no-empty-block
      Timeline.timeSync('Build scheduled', () {}, flow: Flow.end(debugFlowId));

      return true;
    }());
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    final ThemeData theme = Theme.of(context);
    const double pad = 24.0;
    const EdgeInsets padding =
        EdgeInsets.only(left: pad, right: pad, bottom: pad * 4);
    final List<Widget> listWidgets = <Widget>[
      ..._licenses,
      if (!_loaded)
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
    ];

    return DefaultTextStyle(
      style: theme.textTheme.caption!,
      child: Center(
        child: Localizations.override(
          locale: const Locale('en', 'US'),
          context: context,
          child: Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listWidgets,
            ),
          ),
        ),
      ),
    );
  }
}
