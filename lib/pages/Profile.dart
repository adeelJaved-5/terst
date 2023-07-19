import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeff4f8),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  20.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      10.heightBox,
                      ("Profile").text.xl.semiBold.make(),
                      10.heightBox,
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://media-public.canva.com/qUqP4/MAEoKrqUqP4/1/t.jpg'),
                        radius: 45,
                      ),
                      5.heightBox,
                      ("Janelle Sanchez").text.base.semiBold.make(),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ("Wallet")
                                .text
                                .lg
                                .color(const Color(0xff0088cc))
                                .semiBold
                                .make(),
                            10.heightBox,
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Row(
                                    children: [
                                      ("Tokens").text.base.semiBold.make(),
                                      5.widthBox,
                                      Icon(FontAwesomeIcons.questionCircle,
                                          size: 15),
                                    ],
                                  )),
                                  ("500").text.base.semiBold.make(),
                                ],
                              ).pOnly(top: 8, bottom: 8, right: 12, left: 12),
                            ),
                            10.heightBox,
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ("Address").text.base.semiBold.make(),
                                      5.heightBox,
                                      ("0x123123123123")
                                          .text
                                          .xs
                                          .semiBold
                                          .make(),
                                    ],
                                  )),
                                  const Icon(
                                    FontAwesomeIcons.copy,
                                    size: 20,
                                    color: Color(0xff0088cc),
                                  ),
                                ],
                              ).pOnly(top: 8, bottom: 8, right: 12, left: 12),
                            ),
                            10.heightBox,
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ("Export Private Key")
                                      .text
                                      .base
                                      .semiBold
                                      .make(),
                                ],
                              ).pOnly(top: 8, bottom: 8, right: 12, left: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  20.heightBox,
                ],
              ).pOnly(right: 20, left: 20),
              5.heightBox,
              ("Profile")
                  .text
                  .lg
                  .color(const Color(0xff0088cc))
                  .semiBold
                  .make().pOnly(right: 20, left: 20),
              5.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ("View Profile").text.base.semiBold.make().px8(),
                        const Icon(FontAwesomeIcons.angleRight,
                            size: 20, color: Color(0xff868686)),
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              20.heightBox,
              ("General Settings")
                  .text
                  .lg
                  .color(const Color(0xff0088cc))
                  .semiBold
                  .make().pOnly(right: 20, left: 20),
              5.heightBox,
              InkWell(
                onTap: () => Navigator.pushNamed(context, MyRoutes.editProfileRoute),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ("Edit Profile").text.base.semiBold.make().px8(),
                          const Icon(FontAwesomeIcons.angleRight,
                              size: 20, color: Color(0xff868686)),
                        ],
                      ),
                      20.heightBox,
                    ],
                  ).pOnly(right: 20, left: 20),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, MyRoutes.chatRoute),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ("Friends").text.base.semiBold.make().px8(),
                          const Icon(FontAwesomeIcons.angleRight,
                              size: 20, color: Color(0xff868686)),
                        ],
                      ),
                      20.heightBox,
                    ],
                  ).pOnly(right: 20, left: 20),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, MyRoutes.showCollectionRoute),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ("POCPS").text.base.semiBold.make().px8(),
                          const Icon(FontAwesomeIcons.angleRight,
                              size: 20, color: Color(0xff868686)),
                        ],
                      ),
                      20.heightBox,
                    ],
                  ).pOnly(right: 20, left: 20),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ("Terms and Conditions").text.base.semiBold.make().px8(),
                        const Icon(FontAwesomeIcons.angleRight,
                            size: 20, color: Color(0xff868686)),
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ("Privacy Policy").text.base.semiBold.make().px8(),
                        const Icon(FontAwesomeIcons.angleRight,
                            size: 20, color: Color(0xff868686)),
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ("Share ChatMint").text.base.semiBold.make().px8(),
                        const Icon(FontAwesomeIcons.angleRight,
                            size: 20, color: Color(0xff868686)),
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              30.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
