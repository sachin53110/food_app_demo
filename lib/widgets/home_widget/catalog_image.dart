import 'package:flutter/cupertino.dart';
import 'package:food_app_demo/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillImage extends StatelessWidget {
  final String image;

  const SkillImage({Key? key, required this.image})
      : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .width(120)
        .color(MyTheme.creameColor)
        .make()
        .p8();
  }
}
