// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:method_app/settings_list/settings_list.dart';
import 'package:method_app_widgetbook/app.dart';
import 'package:method_app_widgetbook/src/settings.dart';
import 'package:method_preview/method_preview.dart';
import 'package:method_style/method_style.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'MethodApp',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: lightTheme(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: darkTheme(),
        ),
      ],
      devices: [
        Device(
          name: 'iPhone 12 Mini',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2436.0,
              width: 1125.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone 12',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2532.0,
              width: 1170.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone 12 Pro Max',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2778.0,
              width: 1284.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone 13 Mini',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2436.0,
              width: 1125.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone 13',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2532.0,
              width: 1170.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone 13 Pro Max',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2778.0,
              width: 1284.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone SE (2020)',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1334.0,
              width: 750.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: '10.2" iPad',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2160.0,
              width: 1620.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.tablet,
        ),
        Device(
          name: '11" iPad Pro',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2388.0,
              width: 1668.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.tablet,
        ),
        Device(
          name: 'MacBook 13"',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1600.0,
              width: 2560.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.desktop,
        ),
      ],
      frames: [
        WidgetbookFrame(
          name: 'None',
          allowsDevices: true,
        ),
        WidgetbookFrame(
          name: 'Device Frame',
          allowsDevices: true,
        ),
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [
            WidgetbookFolder(
              name: 'settings_list',
              widgets: [],
              folders: [
                WidgetbookFolder(
                  name: 'page',
                  widgets: [
                    WidgetbookComponent(
                      name: 'SettingsListPage',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => buildSettingsList(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                ),
              ],
            ),
          ],
          widgets: [],
        ),
      ],
      deviceFrameBuilder: frameBuilder,
    );
  }
}
