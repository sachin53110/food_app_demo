import 'package:flutter/material.dart';
import 'package:food_app_demo/model/TaskDemoModel.dart';
import 'package:food_app_demo/route/routes.dart';
import 'package:food_app_demo/widgets/home_widget/add_to_cart.dart';
import 'package:food_app_demo/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creameColor,
      bottomNavigationBar: Container(
        color: Colors.green,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 8),
          children: [
            "\$${catalog.price}".text.bold.lg.make(),
            AddToCart(catalog: catalog).wh(120, 40)
          ],
        ).p8(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context)
                .p12(),
            Expanded(
                child: VxArc(
                    height: 30.0,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      width: context.screenWidth,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            catalog.name.text.xl4
                                .color(MyTheme.dartBlusihColor)
                                .bold
                                .make(),
                            catalog.desc.text.caption(context).make(),
                            10.heightBox,
                            "Although it is meaningless and out of context but sometimes we all need sample text in MS Word document. People use random text in Microsoft Word to act as a placeholder for inserting more sensible text later on. This sample text is just used to fill and hold the space. Such dummy text is also useful to quickly give a demonstration of how something will look when proper text will be in place"
                                .text
                                .caption(context)
                                .make()
                                .p16()
                          ],
                        ).py64(),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
