import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';

class MTWFooter extends StatelessWidget {
  const MTWFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Decorative Blueprint Rosette & Arc SVG
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/svg/decorative_bottom.svg',
            fit: BoxFit.fill,
          ),
        ),
        // Footer Content
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Event Date
              const Text(
                '3-4 Sept, 2026',
                style: TextStyle(
                  color: AppTheme.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.5,
                  fontFamily: '-apple-system',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 3),
              // Venue Text: MumbAI, Jio World Convention Centre.
              FittedBox(
                fit: BoxFit.scaleDown,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: AppTheme.white,
                      fontSize: 13.5,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                      fontFamily: 'Courier',
                    ),
                    children: [
                      TextSpan(text: 'Mumb'),
                      TextSpan(
                        text: 'AI',
                        style: TextStyle(
                          color: AppTheme.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(text: ', Jio World Convention Centre.'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ],
    );
  }
}
