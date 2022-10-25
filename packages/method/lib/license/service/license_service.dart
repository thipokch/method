import 'package:flutter/foundation.dart';
import 'package:method/license/model/model.dart';

class LicenseService {
  late final Future<LicenseData> licenses = LicenseRegistry.licenses
      .fold<LicenseData>(
        LicenseData(),
        (LicenseData prev, LicenseEntry license) => prev..addLicense(license),
      )
      .then((LicenseData licenseData) => licenseData..sortPackages());
}
