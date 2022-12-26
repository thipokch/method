library monitoring_service;

export 'src/analytic_service/analytic_service.dart';
export 'src/error_service/error_service.dart';

export 'package:firebase_core/firebase_core.dart' show Firebase;
export 'package:rudder_sdk_flutter/RudderController.dart' show RudderController;
export 'package:rudder_sdk_flutter_platform_interface/platform.dart'
    show RudderConfigBuilder, WebConfig, MobileConfig;
