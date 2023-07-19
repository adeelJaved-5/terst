import 'dart:collection';
import 'dart:io';
import 'package:chatmint_mobile/pages/EditProfile.dart';
import 'package:chatmint_mobile/pages/Profile.dart';
import 'package:chatmint_mobile/pages/chat.dart';
import 'package:chatmint_mobile/pages/createGroup.dart';
import 'package:chatmint_mobile/pages/createNewPOCP.dart';
import 'package:chatmint_mobile/pages/login.dart';
import 'package:chatmint_mobile/pages/sendPOCP.dart';
import 'package:chatmint_mobile/pages/showCollection.dart';
import 'package:chatmint_mobile/pages/showNft.dart';
import 'package:chatmint_mobile/utils/routes.dart';
import 'package:flutter/material.dart';
import 'widgets/themes.dart';
import 'package:web3auth_flutter/enums.dart';
import 'package:web3auth_flutter/input.dart';
import 'package:web3auth_flutter/web3auth_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initWeb3Platform();

  runApp(MyApp());
}

Future<void> initWeb3Platform() async {
  final themeMap = HashMap<String, String>();
  themeMap['primary'] = "#229954";

  Uri redirectUrl;
  if (Platform.isAndroid) {
    redirectUrl = Uri.parse('w3a://com.mycompany.chatmint/auth');
    // w3a://com.example.w3aflutter/auth
  } else if (Platform.isIOS) {
    redirectUrl = Uri.parse('com.mycompany.chatmint://openlogin');
    // com.example.w3aflutter://openlogin
  } else {
    throw UnKnownException('Unknown platform');
  }

  await Web3AuthFlutter.init(Web3AuthOptions(
      clientId:
      "BPwoMehTM530h1LajBJr9ukQmdbJUi05kzyUGwb4oTKa9Nv8J0kMhwngwgObcKLHtCa8HiDRIKunbx1eLl8IheY",
      network: Network.testnet,
      redirectUrl: redirectUrl,
      whiteLabel: WhiteLabelData(
          dark: true, name: "Web3Auth Flutter App", theme: themeMap)));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.showNftRoute: (context) => const ShowNFTPage(),
        MyRoutes.showCollectionRoute: (context) => const ShowCollectionPage(),
        MyRoutes.createNewPOCPRoute: (context) => const CreateNewPOCPPage(),
        MyRoutes.createGroupRoute: (context) => const CreateGroupPage(),
        MyRoutes.sendPOCPRoute: (context) => const SendPOCPPage(),
        MyRoutes.editProfileRoute: (context) => const EditProfilePage(),
        MyRoutes.profileRoute: (context) => const ProfilePage(),
        MyRoutes.chatRoute: (context) => const ChatPage(),

      },
    );
  }
}
