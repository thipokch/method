import 'package:method_ui/element_surface.dart';
import 'package:flutter/material.dart';

class SurfacePreview extends StatelessWidget {
  const SurfacePreview({super.key});

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).colorScheme.shadow;
    Color surfaceTint = Theme.of(context).colorScheme.primary;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 20, 16.0, 0),
          child: Text(
            'Surface Tint only',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ElevationGrid(surfaceTintColor: surfaceTint),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
          child: Text(
            'Surface Tint and Shadow',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ElevationGrid(
          shadowColor: shadowColor,
          surfaceTintColor: surfaceTint,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
          child: Text(
            'Shadow only',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ElevationGrid(shadowColor: shadowColor),
      ],
    );
  }
}

const double narrowScreenWidthThreshold = 450;

class ElevationGrid extends StatelessWidget {
  const ElevationGrid({super.key, this.shadowColor, this.surfaceTintColor});

  final Color? shadowColor;
  final Color? surfaceTintColor;

  List<ElevationCard> elevationCards(
    Color? shadowColor,
    Color? surfaceTintColor,
  ) {
    return ElementSurface.elevations
        .map(
          (elevationInfo) => ElevationCard(
            info: elevationInfo,
            shadowColor: shadowColor,
            surfaceTint: surfaceTintColor,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth < narrowScreenWidthThreshold
            ? GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                children: elevationCards(
                  shadowColor,
                  surfaceTintColor,
                ),
              )
            : GridView.count(
                shrinkWrap: true,
                crossAxisCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                children: elevationCards(
                  shadowColor,
                  surfaceTintColor,
                ),
              );
      }),
    );
  }
}

class ElevationCard extends StatefulWidget {
  const ElevationCard({
    super.key,
    required this.info,
    this.shadowColor,
    this.surfaceTint,
  });

  final ElevationInfo info;
  final Color? shadowColor;
  final Color? surfaceTint;

  @override
  State<ElevationCard> createState() => _ElevationCardState();
}

class _ElevationCardState extends State<ElevationCard> {
  late double _elevation;

  @override
  void initState() {
    super.initState();
    _elevation = widget.info.elevation;
  }

  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(4.0));
    final bool showOpacity = _elevation == widget.info.elevation;
    final Color color = Theme.of(context).colorScheme.surface;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: borderRadius,
        elevation: _elevation,
        color: color,
        shadowColor: widget.shadowColor,
        surfaceTintColor: widget.surfaceTint,
        type: MaterialType.card,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Level ${widget.info.level}',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                '${widget.info.level.toInt()} dp',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              if (showOpacity)
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '${widget.info.overlayPercent}%',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
