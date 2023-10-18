import 'package:flutter/material.dart';
import 'package:islamy_project/my_theme.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int tasbehCount = 0;
  List<String> names = [
    'sophan alah',
    'el hamd for alah',
    'besm el alah',
    'la elah ela allah',
    'allah akber',
  ];
  int index = 0;
  double Angle = 0;

  OnTap() {
    Angle += 3;
    tasbehCount++;
    if (tasbehCount % 33 == 0) {
      index++;
    }
    if (index == names.length) {
      index = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/icon_head.png'),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .085),
                child: InkWell(
                    onTap: OnTap,
                    child: Transform.rotate(
                        angle: Angle,
                        child: Image.asset('assets/images/icon_body.png')))),
          ],
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Number of praises',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 120, right: 120),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: MyTheme.primaryLight),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Center(
              child: Text(
                '${tasbehCount}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: MyTheme.primaryLight),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Center(
              child: Text(
                names[index],
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
