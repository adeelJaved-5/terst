import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web3auth_flutter/enums.dart' as web3provider;
import 'package:web3auth_flutter/input.dart';
import 'package:web3auth_flutter/output.dart';
import 'package:web3auth_flutter/web3auth_flutter.dart';
import 'package:web3dart/credentials.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  bool isLoading = true;
  String privateKey = "";

  @override
  void initState() {
    super.initState();

    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      checkUserDetail();
    });
  }

  TorusUserInfo? userDetail;

  void checkUserDetail() async {
    try {
      setState(() {
        isLoading = true;
      });
      userDetail = await Web3AuthFlutter.getUserInfo();
      privateKey = await Web3AuthFlutter.getPrivKey();
      setState(() {
        isLoading = false;
      });
      print(userDetail);
    } on Exception catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  moveToHome(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.profileRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.white,
            Color(0xFFcb6ce6),
            Color(0xFF004aad),
          ],
          center: Alignment(0.6, 1.0),
          focal: Alignment(-0.6, -0.1),
          focalRadius: 1.0,
          stops: [0.0, 0.6, 1.0],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              100.heightBox,
              Image.asset(
                "assets/images/logo.png",
                scale: 1.1,
              ),
              150.heightBox,
              Form(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Column(
                  children: [
                    if (isLoading)
                      CircularProgressIndicator()
                    else if (userDetail == null)
                      Column(
                        children: [
                          ("Continue with ")
                              .text
                              .base
                              .color(const Color(0xfffffffe))
                              .medium
                              .make(),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SocialLoginButton(
                                icon: FontAwesomeIcons.google,
                                onPressed: () => continueWithWeb3(
                                    web3provider.Provider.google),
                              ),
                              if (Platform.isIOS)
                                SocialLoginButton(
                                  icon: FontAwesomeIcons.apple,
                                  onPressed: () => continueWithWeb3(
                                      web3provider.Provider.apple),
                                ),
                              SocialLoginButton(
                                icon: FontAwesomeIcons.facebook,
                                onPressed: () => continueWithWeb3(
                                    web3provider.Provider.facebook),
                              ),
                              SocialLoginButton(
                                icon: FontAwesomeIcons.twitter,
                                onPressed: () => continueWithWeb3(
                                    web3provider.Provider.twitter),
                              ),
                              SocialLoginButton(
                                icon: FontAwesomeIcons.discord,
                                onPressed: () => continueWithWeb3(
                                    web3provider.Provider.discord),
                              ),
                              SocialLoginButton(
                                icon: Icons.arrow_drop_down,
                                onPressed: () async {
                                  var option = await showConfirmationDialog(
                                      context: context,
                                      title: "Select login provider",
                                      actions: [
                                        AlertDialogAction(
                                            key: web3provider
                                                .Provider.reddit.index,
                                            label: "Reddit"),
                                        AlertDialogAction(
                                            key: web3provider
                                                .Provider.twitch.index,
                                            label: "Twitch"),
                                        AlertDialogAction(
                                            key: web3provider
                                                .Provider.github.index,
                                            label: "Github"),
                                        AlertDialogAction(
                                            key: web3provider
                                                .Provider.linkedin.index,
                                            label: "Linkedin"),
                                        AlertDialogAction(
                                            key: web3provider
                                                .Provider.line.index,
                                            label: "Line"),
                                        AlertDialogAction(
                                            key: web3provider
                                                .Provider.kakao.index,
                                            label: "Kakoa"),
                                      ]);
                                  if (option == null) {
                                    return;
                                  }
                                  continueWithWeb3(
                                      web3provider.Provider.values[option]);
                                },
                              ),
                            ],
                          ),
                          40.heightBox,
                        ],
                      )
                    else ...[
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                  userDetail?.profileImage ?? "")),
                          SizedBox(height: 10),
                          Text(userDetail?.name ?? ""),
                          SizedBox(height: 10),
                          Text(userDetail?.email ?? ""),
                          SizedBox(height: 10),
                          Text(
                              "${EthPrivateKey.fromHex("0x${privateKey}").address}"),
                          SizedBox(height: 20),
                          MaterialButton(
                            shape: RoundedRectangleBorder(),
                            color: Colors.blue,
                            onPressed: () {
                              Clipboard.setData(ClipboardData(
                                      text:
                                          "${EthPrivateKey.fromHex("0x${privateKey}").address}"))
                                  .then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "Address copied to clipboard")));
                              });
                            },
                            child: Text("Copy Address"),
                          ),
                          MaterialButton(
                            color: Colors.black,
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              await Web3AuthFlutter.logout();
                              setState(() {
                                userDetail = null;
                                isLoading = false;
                              });
                            },
                            child: Text("Logout"),
                          )
                        ],
                      )
                    ],
                    ("Email")
                        .text
                        .base
                        .color(const Color(0xfffffffe))
                        .medium
                        .make(),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 14),
                        child: Column(
                          children: [
                            TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(width: 0.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      width: 0.0, color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      width: 0.0, color: Colors.transparent),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: const Color(0xfffffffe),
                                ),
                                hintText: "JohnSmith@example.com",
                                fillColor:
                                    const Color(0xfffffffe).withOpacity(0.3),
                              ),
                            ),
                            10.heightBox,
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black.withOpacity(0.7),
                                minimumSize: const Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                moveToHome(context);
                              },
                              child: ("Continue With Email")
                                  .text
                                  .base
                                  .color(const Color(0xfffffffe))
                                  .medium
                                  .make(),
                            ),
                            50.heightBox,
                            ("External Wallet")
                                .text
                                .base
                                .color(const Color(0xfffffffe))
                                .medium
                                .make(),
                            10.heightBox,
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black.withOpacity(0.7),
                                minimumSize: const Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {},
                              child: ("Use Seed Phrase")
                                  .text
                                  .base
                                  .color(const Color(0xfffffffe))
                                  .medium
                                  .make(),
                            ),
                          ],
                        )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> signinWithEmailAndPassword(
  //     String email, String password, String address) async {
  //   password = password.trim() + "_123456";
  //   try {
  //     final singinRepspnse = await authManager.signInWithEmail(
  //       context,
  //       email,
  //       password,
  //     );
  //     if (singinRepspnse == null) {
  //       final singUpResponse = await authManager.createAccountWithEmail(
  //         context,
  //         email,
  //         password,
  //       );
  //       if (singUpResponse == null) {
  //         return;
  //       }
  //       await UsersRecord.collection
  //           .doc(FirebaseAuth.instance.currentUser?.uid ?? "")
  //           .set({"wallet_address": address}, SetOptions(merge: true));
  //       context.goNamedAuth('AllChatsPage', context.mounted);
  //       return;
  //     }
  //     context.goNamedAuth('AllChatsPage', context.mounted);
  //   } on FirebaseAuthException catch (error) {
  //     print(error.code);
  //   }
  // }

  void continueWithWeb3(web3provider.Provider provider) async {
    try {
      final Web3AuthResponse response =
          await Web3AuthFlutter.login(LoginParams(loginProvider: provider));
      var credentials = EthPrivateKey.fromHex("0x${response.privKey}");

      print("address=>" + (response?.userInfo?.email ?? ""));

      print("address=>" + credentials.address.toString());
      // await signinWithEmailAndPassword((response?.userInfo?.email ?? ""),
      //     (response?.userInfo?.email ?? ""), credentials.address.toString());
      // context.goNamedAuth('AllChatsPage', context.mounted);
      setState(() {});
    } on Exception catch (e) {
      print(e.toString());
      // showOkAlertDialog(
      //     context: context, title: "Error", message: e.toString());
      // TODO
    }
  }
}

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withOpacity(0.50))),
        child: Center(
            child: FaIcon(
          icon,
          color: Colors.white.withOpacity(0.85),
        )),
      ),
    );
  }
}
