// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'dart:math';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/material_state_mixin.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:flutter/widgets.dart';
import 'package:gaimon/gaimon.dart';
import 'package:method_preview/method_preview.dart';
import 'package:method_style/method_style.dart';
import 'package:method_style_widgetbook/app.dart';
import 'package:method_style_widgetbook/component/buttons.dart';
import 'package:method_style_widgetbook/component/cards.dart';
import 'package:method_style_widgetbook/component/chips.dart';
import 'package:method_style_widgetbook/component/heading.dart';
import 'package:method_style_widgetbook/foundation/colors.dart';
import 'package:method_style_widgetbook/foundation/elevation.dart';
import 'package:method_style_widgetbook/foundation/haptics.dart';
import 'package:method_style_widgetbook/foundation/symbols.dart';
import 'package:method_style_widgetbook/foundation/typography.dart';
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
        name: 'MethodStyle',
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
              name: 'component',
              widgets: [
                WidgetbookComponent(
                  name: 'HeadingPreview',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => buildHeadings(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Buttons',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => buildButtons(context),
                    ),
                  ],
                ),
              ],
              folders: [],
            ),
            WidgetbookFolder(
              name: 'material',
              widgets: [
                WidgetbookComponent(
                  name: 'Card',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => buildCards(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Chip',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => buildChips(context),
                    ),
                  ],
                ),
              ],
              folders: [],
            ),
            WidgetbookFolder(
              name: 'foundation',
              widgets: [],
              folders: [
                WidgetbookFolder(
                  name: 'typography',
                  widgets: [
                    WidgetbookComponent(
                      name: 'MtTextStyle',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => buildTypography(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                ),
                WidgetbookFolder(
                  name: 'elevation',
                  widgets: [
                    WidgetbookComponent(
                      name: 'MtElevation',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => buildElevation(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                ),
                WidgetbookFolder(
                  name: 'symbols',
                  widgets: [
                    WidgetbookComponent(
                      name: 'MtSymbols',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => buildSymbols(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                ),
                WidgetbookFolder(
                  name: 'haptics',
                  widgets: [
                    WidgetbookComponent(
                      name: 'MtHaptics',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => buildHaptics(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                ),
                WidgetbookFolder(
                  name: 'colors',
                  widgets: [
                    WidgetbookComponent(
                      name: 'MtColors',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => buildColors(context),
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
