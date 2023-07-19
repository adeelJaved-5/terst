import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeff4f8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.keyboard_arrow_left,
              size: 40, color: Color(0xff0088cc)),
        ),
        title: ("Edit Profile")
            .text
            .xl2
            .bold
            .color(const Color(0xff000000))
            .start
            .make(),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(FontAwesomeIcons.qrcode,
                size: 30, color: Color(0xff0088cc)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage('https://media-public.canva.com/qUqP4/MAEoKrqUqP4/1/t.jpg'),
                          radius: 50,
                        ),
                        20.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ("Janelle Sanchez").text.base.semiBold.make(),
                            5.heightBox,
                            ("Online").text.sm.color(const Color(0xff0088cc)).medium.make(),
                          ],
                        )
                      ],
                    ),
                    20.heightBox,
                    Row(
                      children: [
                        const Icon(Icons.add_a_photo,
                            size: 30, color: Color(0xff0088cc)),
                        10.widthBox,
                        ("Set Profile Photo").text.base.semiBold.make(),
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              5.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ("Account").text.xl.color(const Color(0xff0088cc)).semiBold.make(),
                            15.heightBox,
                            ("Jannie boba").text.base.semiBold.make(),
                            4.heightBox,
                            ("Display Name").text.sm.color(const Color(0xff868686)).semiBold.make(),
                          ],
                        )
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              1.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ("Your Bio is empty").text.base.semiBold.make(),
                            4.heightBox,
                            ("Add a few words about yourself").text.sm.color(const Color(0xff868686)).semiBold.make(),
                          ],
                        )
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              1.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ("0x123123123123123").text.base.semiBold.make(),
                            4.heightBox,
                            ("Your Guest Address").text.sm.color(const Color(0xff868686)).semiBold.make(),
                          ],
                        )
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              5.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ("Settings").text.xl.color(const Color(0xff0088cc)).semiBold.make(),
                            20.heightBox,
                            Row(
                              children: [
                                Icon(Icons.brightness_7,
                                    size: 30, color: Color(0xff0088cc)),
                                10.widthBox,
                                ("Light Mode").text.base.semiBold.make(),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              1.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        const Icon(Icons.logout_outlined,
                            size: 30, color: Color(0xff0088cc)),
                        10.widthBox,
                        ("Logout").text.base.semiBold.make(),
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              1.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.circleMinus,
                            size: 30, color: Color(0xff0088cc)),
                        10.widthBox,
                        ("Delete Account").text.base.semiBold.make(),
                      ],
                    ),
                    20.heightBox,
                  ],
                ).pOnly(right: 20, left: 20),
              ),
              4.heightBox,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ("Help").text.xl.color(const Color(0xff0088cc)).semiBold.make(),
                            20.heightBox,
                            Row(
                              children: [
                                Icon(Icons.message_outlined,
                                    size: 30, color: Color(0xff0088cc)),
                                10.widthBox,
                                ("Ask Support").text.base.semiBold.make(),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    30.heightBox,
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
