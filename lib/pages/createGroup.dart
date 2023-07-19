import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({super.key});

  @override
  State<CreateGroupPage> createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  bool isSwitched = true;
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
        title: ("Create New Group")
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
              30.heightBox,
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/screen.jpg'),
                  radius: 110,
                  child: Stack(children: const [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xff0088cc),
                        child: Icon(Icons.edit, size: 25, color: Colors.white),
                      ),
                    ),
                  ]),
                ),
              ),
              30.heightBox,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("GROUP NAME").text.base.medium.make(),
                  10.heightBox,
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                            width: 0.0, color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                            width: 0.0, color: Colors.transparent),
                      ),
                      filled: true,
                      hintText: "College_beers_sneakers",
                      fillColor: const Color(0xffbae8ff).withOpacity(0.5),
                    ),
                  ),
                  20.heightBox,
                  ("ADD MEMBERS").text.base.medium.make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                mainAxisExtent: 60,
                              ),
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return const InkWell(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://media-public.canva.com/PHxr4/MAEPsgPHxr4/1/t.jpg'),
                                    radius: 110,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      20.widthBox,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.person_add,
                                  size: 50, color: Color(0xff0088cc))
                              .pOnly(right: 8, top: 8, bottom: 8),
                        ],
                      ),
                    ],
                  ),
                  20.heightBox,
                  ("PRIVACY").text.base.medium.make(),
                  Row(
                    children: [
                      ("Private").text.lg.bold.make(),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: const Color(0xffe9e9e9),
                        activeColor: const Color(0xff0088cc),
                      )
                    ],
                  ),
                  10.heightBox,
                  ("POCP Requirement").text.base.medium.make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                mainAxisExtent: 60,
                              ),
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return const InkWell(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://media-public.canva.com/MACFmqmIp_s/1/thumbnail-1.jpg'),
                                    radius: 110,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      20.widthBox,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.add_box_outlined,
                                  size: 50, color: Color(0xff0088cc))
                              .pOnly(right: 0, top: 8, bottom: 8),
                        ],
                      ),
                      75.widthBox,
                    ],
                  ),
                  ("(NO WORRIES, YOU CAN CREATE POCP AFTER YOU CREATE A GROUP.)")
                      .text
                      .xs
                      .medium
                      .make(),
                  60.heightBox,
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
                          onPressed: () {},
                          child: ("Create Group")
                              .text
                              .base
                              .color(const Color(0xfffffffe))
                              .bold
                              .make()
                              .py16(),
                        ),
                      ),
                    ],
                  ),
                  30.heightBox,
                ],
              ).px16(),
            ],
          ).pOnly(right: 20, left: 20),
        ),
      ),
    );
  }
}
