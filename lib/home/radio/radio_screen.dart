import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  static const String routeName = 'radio_screen';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: [
          Image.asset('assets/images/radio_icon.png'),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              AppLocalizations.of(context)!.holy_quran_radio,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/icon_before.png'),
                SizedBox(
                  width: 6,
                ),
                Image.asset('assets/images/Icon_play.png'),
                SizedBox(
                  width: 6,
                ),
                Image.asset('assets/images/Icon_next.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
