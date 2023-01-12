import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      devices: [
        Apple.iPhone11,
        Samsung.s21ultra,
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
      appInfo: AppInfo(name: 'Example'),
      categories: [
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'elevated',
                  builder: (context) => Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Smart'),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'text',
                  builder: (context) => Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Lorraine'),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'outlined',
                  builder: (context) => Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Widgetbook'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
