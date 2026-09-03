import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';
import '../widgets/mtw_header.dart';
import '../widgets/identity_details.dart';
import '../widgets/mtw_footer.dart';

class IdentityCardScreen extends StatelessWidget {
  const IdentityCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppTheme.mtwPink,
      // Minimal mandatory AppBar blending seamlessly into the MTW background
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(24.0),
        child: AppBar(
          title: const Text(
            'MTW 2026',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: Colors.white70,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppTheme.mtwPink,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
      ),
      body: SafeArea(
        top: false,
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              width: double.infinity,
              constraints: const BoxConstraints(maxWidth: 440),
              color: AppTheme.mtwPink,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Main Poster Column
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // MTW Header (Monogram, Mumbai Tech Week, TEA & Maharashtra Govt Logos)
                      const MTWHeader(),
                      const SizedBox(height: 2),

                      // Mumbai City Isometric Illustration overlapping top edge of card
                      Transform.translate(
                        offset: const Offset(0, 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: SvgPicture.asset(
                            'assets/svg/mumbai_city.svg',
                            width: screenWidth * 0.95,
                            height: 160,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      // White Identity Card
                      const IdentityDetails(
                        name: 'SWETA KADAM',
                        university: 'ITM Skills University',
                        age: '20 Years',
                        idNumber: 'MTW26GLCR47C6',
                        bloodGroup: 'A+',
                        location: 'Mumbai, India',
                        email: 'sweta1@gmail.com',
                      ),
                      const SizedBox(height: 6),

                      // Event Dates & Venue Footer
                      const MTWFooter(),
                    ],
                  ),

                  // Left Side Floating Sailboats & Arabian Sea Waves
                  Positioned(
                    left: 2,
                    top: 245,
                    child: IgnorePointer(
                      child: SvgPicture.asset(
                        'assets/svg/decorative_left.svg',
                        width: 44,
                        height: 180,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // Right Side Floating: Robot (Top) & Double Decker Bus (Bottom)
                  Positioned(
                    right: 2,
                    top: 245,
                    child: IgnorePointer(
                      child: SvgPicture.asset(
                        'assets/svg/decorative_right.svg',
                        width: 52,
                        height: 310,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
