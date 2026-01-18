import 'package:flutter/widgets.dart';

class TwoColumnLayout extends StatelessWidget {
  const TwoColumnLayout({
    super.key,
    required this.leftContent,
    required this.rightContent,
  });

  final Widget leftContent;
  final Widget rightContent;
  final int paneProportion = 50;

  @override
  Widget build(BuildContext context) {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      children: [
        Flexible(
          flex: paneProportion,
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            margin: EdgeInsets.only(top: 30, right: 15, bottom: 30, left: 30),
            child: leftContent,
          ),
        ),
        Flexible(
          flex: 100 - paneProportion,
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            margin: EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 15),
            child: rightContent,
          ),
        ),
      ],
    );
  }
}
