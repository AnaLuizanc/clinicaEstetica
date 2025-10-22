import 'package:flutter/material.dart';
import '/widgets/widgets.dart';

class TratamentosPage extends StatelessWidget {
  const TratamentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color orangeColor = Color(0xfff35f14);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 1,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 4.0,
              children: [
                ServiceBox(
                  title: 'TRATAMENTOS',
                  imagePath: '',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
