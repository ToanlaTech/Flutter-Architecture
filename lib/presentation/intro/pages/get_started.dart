import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/common/widgets/button/basic_app_button.dart';
import 'package:flutter_clean_architecture/core/configs/assets/app_images.dart';
import 'package:flutter_clean_architecture/core/configs/assets/app_vectors.dart';
import 'package:flutter_clean_architecture/presentation/chose_mode/pages/choose_mode.dart';
import 'package:flutter_svg/svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.introBG),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.15),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: [
            Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(AppVectors.logo)),
            Spacer(),
            Text('Enjoy Listening To Music',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 21),
            Text('Millions of songs at your fingertips',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            BasicAppButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChooseModePage()))
                    },
                title: 'Get Started')
          ]),
        ),
      ],
    ));
  }
}
