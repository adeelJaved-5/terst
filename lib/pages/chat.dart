import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            toolbarHeight: 100,
            title: const Text("Chats",
                style: TextStyle(
                    color: Color(0xff0088cc),
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
                child: TabBar(
                  tabs: const [
                    Tab(text: "Personal"),
                    Tab(text: "Groups"),
                  ],
                  labelColor: const Color(0xffffffff),
                  unselectedLabelColor: const Color(0xff0088cc),
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  indicator: BoxDecoration(
                      color: const Color(0xff0088cc),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 13),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                              width: 0.0, color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                              width: 0.0, color: Colors.transparent),
                        ),
                        filled: true,
                        hintText: "Super Rare P&L",
                        prefixIcon: Icon(Icons.search),
                        fillColor: const Color(0xffbae8ff).withOpacity(0.4),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, MyRoutes.createGroupRoute),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ("Create New Group Chat")
                              .text
                              .xl2
                              .color(const Color(0xff0088cc))
                              .semiBold
                              .make(),
                          const Icon(
                            Icons.group,
                            size: 50,
                            color: const Color(0xff0088cc),
                          )
                        ],
                      ).p16(),
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,
                        mainAxisExtent: 65,
                      ),
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://media-public.canva.com/qUqP4/MAEoKrqUqP4/1/t.jpg'),
                                      radius: 25,
                                    ),
                                    20.widthBox,
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ("Parties&Shots").text.xl.color(Color(0xff0088cc)).start.make(),
                                        5.heightBox,
                                        ("Drinks at nine tonight peeps!").text.sm.start.make(),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ("Now").text.sm.color(Color(0xff0088cc)).start.make(),
                                    5.heightBox,
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff0088cc),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ("2").text.xs.bold.color(Colors.white).center.make().py4(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ).pOnly(top: 10, bottom: 10, right: 32, left: 32),
              ),
              const Icon(
                Icons.add_a_photo,
                size: 50,
                color: Colors.lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
