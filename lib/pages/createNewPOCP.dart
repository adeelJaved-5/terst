import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateNewPOCPPage extends StatefulWidget {
  const CreateNewPOCPPage({super.key});

  @override
  State<CreateNewPOCPPage> createState() => _CreateNewPOCPPageState();
}

class _CreateNewPOCPPageState extends State<CreateNewPOCPPage> {
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
        title: ("Create New POCP")
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("NAME OF POCP").text.base.medium.make(),
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
                      hintText: "Super Rare P&L",
                      fillColor: const Color(0xffbae8ff).withOpacity(0.5),
                    ),
                  ),
                  20.heightBox,
                  ("UpLOAD IMAGE OF POCP").text.base.medium.make(),
                  10.heightBox,
                  Image.network('https://media-public.canva.com/7FpMc/MAEeCQ7FpMc/1/s.png', width: 200,),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/hint.png'),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Color(0xffe9dff1),
                              ),
                              child: Row(
                                children: [
                                  const Icon(CupertinoIcons.arrow_left,
                                      textDirection: TextDirection.rtl,
                                      size: 50, color: Color(0xff0088cc)),
                                  ("Not sure where to start? \nGenerate your POCP using \nour AI feature.")
                                      .text
                                      .base
                                      .medium
                                      .make()
                                      .pOnly(top: 16, right: 16, bottom: 16),
                                ],
                              )
                          ).pOnly(left: 20)
                        ],
                      ),
                    ],
                  ),
                  20.heightBox,
                  ("DESCRIPTION").text.base.medium.make(),
                  10.heightBox,
                  TextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
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
                      hintText:
                          "A rare collection of the P&L series and available only to exclusive members. This is a phygital version of the super series collection of the bored capes.",
                      fillColor: const Color(0xffbae8ff).withOpacity(0.5),
                    ),
                  ),
                  20.heightBox,
                  ("NUMBER OF PIECES").text.base.medium.make(),
                  15.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: VxStepper(
                        disableInput: true,
                        inputBoxColor: Colors.transparent,
                        onChange: (value) {
                          print(value);
                        }).py8(),
                  ),
                  30.heightBox,
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
              ).px16(),
            ],
          ).pOnly(right: 20, left: 20),
        ),
      ),
    );
  }
}
