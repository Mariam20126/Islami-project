import 'package:flutter/material.dart';
import 'package:islamy_project/home/hadeth/hadeth_tab.dart';
import 'package:islamy_project/home/quran/quran_tab.dart';
import 'package:islamy_project/home/radio/radio_screen.dart';
import 'package:islamy_project/home/tasbeh/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: 'quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                  ),
                  label: 'hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'tasbeh',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'radio',
                ),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
