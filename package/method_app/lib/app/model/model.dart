import 'dart:async';

import 'package:provider/provider.dart';

typedef Service = Object;
typedef CreateService<S extends Service> = Create<FutureOr<S>>;
