import 'package:flutter/cupertino.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.type, @required this.iconShape});
  final String type;
  final IconData iconShape;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconShape,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          type,
          style: textStyleType,
        ),
      ],
    );
  }
}
