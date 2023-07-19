import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SendPOCPPage extends StatelessWidget {
  const SendPOCPPage({super.key});

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
        title: ("Distribute POCP")
            .text
            .xl2
            .bold
            .color(const Color(0xff0088cc))
            .start
            .make(),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.border_color_outlined,
                size: 30, color: Color(0xff0088cc)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              30.heightBox,
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffbae8ff),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                                'https://media-private.canva.com/uGZaQ/MAFoZ0uGZaQ/1/s.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJWF6QO3UH4PAAJ6Q%2F20230717%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230717T170536Z&X-Amz-Expires=23367&X-Amz-Signature=18dacc801af237d599902b0559e68b5e1315ccf935e1cb7579071582f5a25cc1&X-Amz-SignedHeaders=host&response-expires=Mon%2C%2017%20Jul%202023%2023%3A35%3A03%20GMT'
                            ),
                          ),
                          ("Nyanko").text.xl2.bold.make().p12(),
                        ],
                      ),
                    ),
                    30.widthBox,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.heightBox,
                        ("Unique Holders").text.xs.bold.start.make(),
                        ("16").text.base.bold.start.make().py4(),
                        20.heightBox,
                        ("Mint Number").text.xs.bold.start.make(),
                        ("8").text.base.bold.start.make().py4(),
                        20.heightBox,
                        ("Mint Remaining").text.xs.bold.start.make(),
                        ("8").text.base.bold.start.make().py4(),
                        20.heightBox,
                        ("Collection").text.xs.bold.start.make(),
                        ("Piximals").text.base.bold.start.make().py4(),
                        20.heightBox,
                      ],
                    ),
                  ],
                ).p16(),
              ),
              10.heightBox,
              Column(
                children: [
                  ("Search For Friends or Input Anybody's Wallet Addresses to Send Your PoCP to")
                      .text
                      .base
                      .medium
                      .center
                      .make(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.heightBox,
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(width: 0.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                                width: 0.0, color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                                width: 0.0, color: Colors.transparent),
                          ),
                          filled: true,
                          hintText: "Enter a name or Wallet Addresss",
                          fillColor: const Color(0xffbae8ff).withOpacity(0.5),
                        ),
                        style: TextStyle(fontSize: 12.0),
                      ),
                      5.heightBox,
                      ("PoCPs left: 2").text.sm.medium.start.make().px8(),
                    ],
                  ),
                ],
              ).p32(),
              Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffbae8ff),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                      child: ("John Davis").text.sm.medium.start.make().p12(),
                  ).p8(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffbae8ff),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ("Jessie Sandigo").text.sm.medium.start.make().p12(),
                  ).p8(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffbae8ff),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ("0x123010314").text.sm.medium.start.make().p12(),
                  ).p8(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffbae8ff),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ("Norman Siegman").text.sm.medium.start.make().p12(),
                  ).p8(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffbae8ff),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ("Norman Siegman").text.sm.medium.start.make().p12(),
                  ).p8(),
                ],
              ),
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
                      child: ("Create Now")
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
          ).pOnly(right: 20, left: 20),
        ),
      ),
    );
  }
}
