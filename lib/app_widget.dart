import 'package:flutter/material.dart';
import 'package:meuapp/modules/feed/feed_page.dart';
import 'package:meuapp/modules/home/home_page.dart';
import 'package:meuapp/modules/login/login_page.dart';
import 'package:meuapp/modules/login/pages/create_account/create_account_page.dart';
import 'package:meuapp/modules/profile/profile_page.dart';
import 'package:meuapp/modules/splash/splash_page.dart';
import 'package:meuapp/shared/models/user_model.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Race #1",
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/login/create-account": (context) => const CreateAccountPage(),
        "/home": (context) => HomePage(
              pages: [FeedPage(), ProfilePage()],
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            )
      },
    );
  }
}
