import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/screen/onboarding/provider/onboarding_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle: bold24BlueGrey,
      titlePadding: const EdgeInsets.fromLTRB(60, 0, 60, 16),
      bodyTextStyle: light16BlueGrey45,
      bodyPadding: const EdgeInsets.fromLTRB(60, 0, 60, 109),
      pageColor: Colors.white,
    );

    return Scaffold(
      body: Consumer<OnboardingProvider>(
        builder: (context, onboardingProvider, child) {
          return IntroductionScreen(
            key: onboardingProvider.introKey,
            globalBackgroundColor: Colors.white,
            allowImplicitScrolling: true,
            bodyPadding: const EdgeInsets.only(top: 100),
            pages: [
              PageViewModel(
                title: "View and buy Medicine online",
                body:
                    "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
                image: Image.asset(Assets.assetsImageOnboarding1),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Online medical & Healthcare",
                body:
                    "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
                image: Image.asset(Assets.assetsImageOnboarding2),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Get Delivery on time",
                body:
                    "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
                image: Image.asset(Assets.assetsImageOnboarding3),
                decoration: pageDecoration,
              ),
            ],
            onDone: () => onboardingProvider.onIntroEnd(context),
            onSkip: () => onboardingProvider.onIntroEnd(context),
            showSkipButton: true,
            skipOrBackFlex: 0,
            nextFlex: 0,
            showBackButton: false,
            back: const Icon(Icons.arrow_back),
            skip: Text('Skip', style: regular14BlueGrey45),
            next: Text('Next', style: bold14Blue),
            done: Text('Done', style: bold14Blue),
            curve: Curves.fastLinearToSlowEaseIn,
            controlsMargin: const EdgeInsets.all(16),
            controlsPadding: kIsWeb
                ? const EdgeInsets.all(12.0)
                : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
            dotsDecorator: DotsDecorator(
              size: const Size(4.0, 4.0),
              color: grey,
              activeShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
            dotsContainerDecorator: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
