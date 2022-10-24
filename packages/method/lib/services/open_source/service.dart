import 'package:flutter/foundation.dart';

part 'data.dart';

class OpenSourceService {
  late final Future<OpenSourceData> licenses = LicenseRegistry.licenses
      .fold<OpenSourceData>(
        OpenSourceData(),
        (OpenSourceData prev, LicenseEntry license) =>
            prev..addLicense(license),
      )
      .then((OpenSourceData licenseData) => licenseData..sortPackages());
}
