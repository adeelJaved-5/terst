import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class ShowNFTPage extends StatelessWidget {
  const ShowNFTPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.keyboard_arrow_left,
              size: 40, color: Color(0xff0088cc)),
        ),
        title: ("POCP Collection").text.xl2.bold.color(const Color(0xff0088cc)).start.make(),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.border_color_outlined, size: 30, color: Color(0xff0088cc)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Image.asset('assets/images/nftImage.png').p32(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ("Created By").text.xs.bold.start.make(),
                        ("Justin Domer").text.base.bold.start.make().py4(),
                      ],
                    ),
                  ),
                  40.widthBox,
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ("Collection").text.xs.bold.start.make(),
                        ("Piximals").text.base.bold.start.make().py4(),
                      ],
                    ),
                  ),
                ],
              ).pOnly(bottom: 25, right: 50, left: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ("PoCP Chat").text.xs.bold.start.make(),
                        ("Pets Chat").text.base.bold.start.make().py4(),
                      ],
                    ),
                  ),
                  40.widthBox,
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ("Unique Holders").text.xs.bold.start.make(),
                        ("16").text.base.bold.start.make().py4(),
                      ],
                    ),
                  ),
                ],
              ).pOnly(bottom: 25, right: 50, left: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ("Mint Number").text.xs.bold.start.make(),
                        ("8").text.base.bold.start.make().py4(),
                      ],
                    ),
                  ),
                ],
              ).pOnly(bottom: 50, right: 50, left: 50),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff0088cc),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: ("Mint PoCP")
                          .text
                          .base
                          .color(const Color(0xfffffffe))
                          .bold
                          .make()
                          .py16(),
                    ),
                  ),
                  20.widthBox,
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffdf3a28),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: ("Burn PoCP")
                          .text
                          .base
                          .color(const Color(0xfffffffe))
                          .bold
                          .make()
                          .py16(),
                    ),
                  ),
                ],
              ).px32(),
              15.heightBox,
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff0088cc),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.sendPOCPRoute);
                      },
                      child: ("Distribute PoCP")
                          .text
                          .base
                          .color(const Color(0xfffffffe))
                          .bold
                          .make()
                          .py16(),
                    ),
                  ),
                ],
              ).px32(),
              30.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
