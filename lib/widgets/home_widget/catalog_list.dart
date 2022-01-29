import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_demo/model/TaskDemoModel.dart';
import 'package:food_app_demo/pages/home_detail_page.dart';
import 'package:food_app_demo/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class SkillList extends StatelessWidget {
  const SkillList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Skill.items.length,
      itemBuilder: (context, index) {
        final catalog = Skill.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: SkillImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyTheme.dartBlusihColor).bold.make(),
            catalog.desc.text.caption(context).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mOnly(right: 8),
              children: [
                "\$${catalog.price}".text.bold.lg.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.dartBlusihColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Buy".text.make(),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.square(100).make().py12();
  }
}
