import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';

class MTWHeader extends StatelessWidget {
  const MTWHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 4),
        // MTW Monogram with blueprint lines
        SvgPicture.asset(
          'assets/svg/mtw_logo.svg',
          width: 275,
          height: 82,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 2),

        // MUMBAI TECH WEEK Text with Flanking Horizontal Lines
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 1.8,
                  margin: const EdgeInsets.only(right: 10.0),
                  color: AppTheme.white,
                ),
              ),
              const Text(
                'MUMBAI TECH WEEK',
                style: TextStyle(
                  color: AppTheme.white,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.2,
                  fontFamily: '-apple-system',
                ),
              ),
              Expanded(
                child: Container(
                  height: 1.8,
                  margin: const EdgeInsets.only(left: 10.0),
                  color: AppTheme.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),

        // Partner Logos Row: TEA & Maharashtra Govt
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TEA Logo
              Expanded(
                child: Center(
                  child: SvgPicture.asset(
                    'assets/svg/tea_logo.svg',
                    height: 48,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Maharashtra Govt Emblem
              Expanded(
                child: Center(
                  child: SvgPicture.asset(
                    'assets/svg/maharashtra_logo.svg',
                    height: 48,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
