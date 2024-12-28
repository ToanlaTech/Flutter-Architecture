import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/configs/assets/app_vectors.dart';
import 'package:flutter_clean_architecture/presentation/intro/pages/get_started.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectToGetStartedPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo,
          width: 200,
          height: 200,
        ),
      ),
    );
  }

  Future<void> redirectToGetStartedPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => GetStartedPage()),
    );
  }
}
