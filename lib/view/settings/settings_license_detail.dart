part of 'settings_license_list.dart';

void showLicenseDetailPage({
  required BuildContext context,
  required String packageName,
  required List<LicenseEntry> licenseEntries,
  bool useRootNavigator = false,
}) {
  Navigator.of(context, rootNavigator: useRootNavigator)
      .push(MaterialPageRoute<void>(
    builder: (BuildContext context) => LicenseDetailPage(
      packageName: packageName,
      licenseEntries: licenseEntries,
    ),
  ));
}

class LicenseDetailPage extends StatelessWidget {
  const LicenseDetailPage({
    Key? key,
    required this.packageName,
    required this.licenseEntries,
  }) : super(key: key);

  final String packageName;
  final List<LicenseEntry> licenseEntries;

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
            MethodSliverNavigationBar(
              largeTitle: Text(packageName),
            ),
          ],
          body: Material(
            child: _PackageLicensePage(
              packageName: packageName,
              licenseEntries: licenseEntries,
            ),
          ),
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
          padding: EdgeInsets.all(18.0),
          child: Divider(),
        ));
        for (final LicenseParagraph paragraph in paragraphs) {
          if (paragraph.indent == LicenseParagraph.centeredIndent) {
            _licenses.add(Padding(
              padding: const EdgeInsets.only(top: 16.0),
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
    final double pad = _getGutterSize(context);
    final EdgeInsets padding =
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
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: Scrollbar(
              child: ListView(
                padding: padding,
                children: listWidgets,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const int _materialGutterThreshold = 720;
const double _wideGutterSize = 24.0;
const double _narrowGutterSize = 16.0;

double _getGutterSize(BuildContext context) =>
    MediaQuery.of(context).size.width >= _materialGutterThreshold
        ? _wideGutterSize
        : _narrowGutterSize;
