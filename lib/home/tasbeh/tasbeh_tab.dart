import 'package:flutter/material.dart';
import 'package:islamy_project/my_theme.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  bool shouldRotate = false;
  int index = 0;
  List<String> write = ['sophan alah', 'el hamd for alah', 'besm el alah'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/icon_head.png'),
          GestureDetector(
            onTap: incrementCounter,
            child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: shouldRotate ? 200.0 : 100.0,
                height: shouldRotate ? 200.0 : 100.0,
                transform: shouldRotate
                    ? Matrix4.rotationZ(0.25)
                    : Matrix4.rotationZ(0),
                child: Image.asset('assets/images/icon_body.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              'Number of praises',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyTheme.primaryLight),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  '$counter',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyTheme.primaryLight),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  '${write[index]}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter % 33 == 0) {
        shouldRotate = true;
        index++;
        if (index >= write.length) {
          index = 0;
        }
      } else {
        shouldRotate = false;
      }
    });
  }
}
