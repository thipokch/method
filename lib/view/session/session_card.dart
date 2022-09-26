part of 'session_widget.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({super.key});

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      _SessionWidget(
        exercise: exercise,
        session: session,
        child: const SessionCard(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<SessionBloc, SessionState>(
        builder: (context, state) {
          final bloc = context.read<SessionBloc>();
          final exercise = bloc.state.exercise;
          final themeData = Theme.of(context);
          final imageShader = themeData.extension<ThemeImageShader>()?.shader;
          final colorScheme = themeData.colorScheme;
          final textTheme = themeData.textTheme;

          return Hero(
            tag: exercise.name,
            child: Theme(
              // Hero defaults to Materialapp's Theme
              data: themeData,
              child: Card(
                elevation: 0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: const SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius.all(
                    SmoothRadius(
                      cornerRadius: ElementScale.cornerLarge,
                      cornerSmoothing: ElementScale.cornerSmoothFactor,
                    ),
                  ),
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(height: 100),
                  child: InkWell(
                    onTap: () {
                      final bloc = context.read<SessionBloc>();

                      Navigator.of(context).push(
                        SessionPage.route(bloc: bloc, theme: themeData),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox.expand(
                          child: CustomPaint(
                            painter: AirbrushPainter(
                              context: context,
                              // frame: 825,
                              frame: 7,
                              // frame: 2048.0 * 2,
                              colorLighter: colorScheme.secondaryContainer,
                              colorLight: colorScheme.primaryContainer,
                              colorDark: colorScheme.primaryContainer,
                              colorDarker: colorScheme.background,
                              // colorDarker: colorScheme.surfaceVariant,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CustomPaint(
                              painter: AirbrushPainter(
                                context: context,
                                imageShader: imageShader,
                                frame: exercise.presentation.seed,
                                colorLighter: colorScheme.primaryContainer,
                                colorLight: colorScheme.secondaryContainer,
                                colorDark: colorScheme.background,
                                colorDarker: colorScheme.primary,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            exercise.name,
                            style: textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          subtitle: Text(
                            exercise.description,
                            style: textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}
