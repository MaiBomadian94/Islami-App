import 'package:flutter/material.dart';
import 'package:islami_app/constants.dart';
import 'package:provider/provider.dart';

import '../../config/settings_provider.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/radio_header.png',
          // height: mediaQuery.height * .2,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'إذاعة القرآن الكريم',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'El Messiri',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous,
              color: vm.currentThemeMode == ThemeMode.light
                  ? kPrimaryColorLightTheme
                  : kSecondColorDarkTheme,
              size: 50,
            ),
            Icon(
              Icons.play_arrow,
              color: vm.currentThemeMode == ThemeMode.light
                  ? kPrimaryColorLightTheme
                  : kSecondColorDarkTheme,
              size: 50,
            ),
            Icon(
              Icons.skip_next,
              color: vm.currentThemeMode == ThemeMode.light
                  ? kPrimaryColorLightTheme
                  : kSecondColorDarkTheme,
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}
