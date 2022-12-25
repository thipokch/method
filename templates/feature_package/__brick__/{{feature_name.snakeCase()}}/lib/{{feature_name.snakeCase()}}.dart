library {{feature_name.snakeCase()}};

{{#isBloc}}export 'src/logic/logic.dart';{{/isBloc}}{{#isCubit}}export 'src/logic/logic.dart';{{/isCubit}}{{#isProvider}}export 'src/provider/provider.dart';{{/isProvider}}{{#isRiverpod}}export 'src/provider/provider.dart';{{/isRiverpod}}
export 'src/route/route.dart';
export 'src/view/view.dart';
