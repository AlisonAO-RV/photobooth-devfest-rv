import 'package:flutter/material.dart';
import 'package:io_photobooth/l10n/l10n.dart';
import 'package:io_photobooth/landing/landing.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class LandingBody extends StatelessWidget {
  const LandingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        children: [
          const SizedBox(height: 15),
          SelectableText(
            l10n.landingPageHeading,
            key: const Key('landingPage_heading_text'),
            style: theme.textTheme.displayLarge
                ?.copyWith(color: PhotoboothColors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          SelectableText(
            l10n.landingPageSubheading,
            key: const Key('landingPage_subheading_text'),
            style: theme.textTheme.displaySmall
                ?.copyWith(color: PhotoboothColors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          const LandingTakePhotoButton(),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/backgrounds/foto2.png',
              height: size.width <= PhotoboothBreakpoints.small
                  ? size.height * 0.5
                  : size.height * 0.65,
            ),
          ),
        ],
      ),
    );
  }
}
