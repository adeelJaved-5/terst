import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class ShowCollectionPage extends StatelessWidget {
  const ShowCollectionPage({super.key});

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
        title: ("POCP Collection")
            .text
            .xl2
            .bold
            .color(const Color(0xff0088cc))
            .start
            .make(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
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
                        Navigator.pushNamed(context, MyRoutes.createNewPOCPRoute);
                      },
                      child: ("Create new POCP")
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
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  mainAxisExtent: 290,
                ),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(context, MyRoutes.showNftRoute),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffecf9fa), // Replace with your desired background color
                        borderRadius: BorderRadius.circular(
                            10), // Replace with your desired border radius
                      ),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/cardImage.png'),
                            ("Piximals").text.base.bold.start.make().p12(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ("Created By").text.xs.bold.start.make(),
                                      ("Justin Domer")
                                          .text
                                          .base
                                          .bold
                                          .start
                                          .make()
                                          .py4(),
                                    ],
                                  ),
                                ),
                                20.widthBox,
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ("Mint left").text.xs.bold.start.make(),
                                      ("12").text.base.bold.start.make().py4(),
                                    ],
                                  ),
                                ),
                              ],
                            ).px12(),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              30.heightBox,
            ],
          ).pOnly(right: 20, left: 20),

        ),
      ),
    );
  }
}
