import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/common/widgets/button/basic_app_button.dart';
import 'package:flutter_clean_architecture/core/configs/assets/app_images.dart';
import 'package:flutter_clean_architecture/core/configs/assets/app_vectors.dart';
import 'package:flutter_clean_architecture/core/configs/theme/app_colors.dart';
import 'package:flutter_clean_architecture/presentation/auth/pages/signup_or_signin.dart';
import 'package:flutter_clean_architecture/presentation/chose_mode/bloc/theme_cubit.dart';
import 'package:flutter_svg/svg.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.chooseModeBG),
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
            Text('Choose Mode',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                    },
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: const Color(0xff30393C).withOpacity(0.5),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              AppVectors.moon,
                              fit: BoxFit.none,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Dark Mode',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.grey),
                  )
                ]),
                SizedBox(width: 20),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                      },
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                AppVectors.sun,
                                fit: BoxFit.none,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Light Mode',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors.grey),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            BasicAppButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignUpOrSignInPage()))
                    },
                title: 'Get Started')
          ]),
        ),
      ],
    ));
  }
}