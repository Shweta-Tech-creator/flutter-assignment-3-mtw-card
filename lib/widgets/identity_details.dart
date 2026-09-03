import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'qr_section.dart';

class IdentityDetails extends StatelessWidget {
  final String name;
  final String university;
  final String age;
  final String idNumber;
  final String bloodGroup;
  final String location;
  final String email;

  const IdentityDetails({
    super.key,
    this.name = 'SWETA KADAM',
    this.university = 'ITM Skills University',
    this.age = '20 Years',
    this.idNumber = 'MTW26GLCR47C6',
    this.bloodGroup = 'A+',
    this.location = 'Mumbai, India',
    this.email = 'sweta1@gmail.com',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 22.0),
      padding: const EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 10.0),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Attendee Name in very large black text (as in reference)
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.6,
                color: AppTheme.textPrimary,
                fontFamily: '-apple-system',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 2),

          // University Name
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              university,
              style: const TextStyle(
                fontSize: 17.5,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.2,
                color: AppTheme.textSecondary,
                fontFamily: '-apple-system',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),

          // Attendee Stats & Profile Row (Mandatory Widgets: CircleAvatar, Row, Column, Icon, Text)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 3.5, horizontal: 8),
            decoration: BoxDecoration(
              color: AppTheme.lightGray.withAlpha(160),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                // Profile CircleAvatar
                const CircleAvatar(
                  radius: 12,
                  backgroundColor: AppTheme.mtwPink,
                  child: CircleAvatar(
                    radius: 10.5,
                    backgroundColor: AppTheme.white,
                    child: Icon(
                      Icons.person_rounded,
                      size: 14,
                      color: AppTheme.mtwPink,
                    ),
                  ),
                ),
                const SizedBox(width: 6),

                // Age Column
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.cake_outlined,
                        size: 13,
                        color: AppTheme.mtwPink,
                      ),
                      const SizedBox(height: 1),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          age,
                          style: const TextStyle(
                            fontSize: 9.5,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.textPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 1,
                  height: 16,
                  color: AppTheme.borderGray,
                ),

                // ID Column
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.badge_outlined,
                        size: 13,
                        color: AppTheme.mtwDarkBlue,
                      ),
                      const SizedBox(height: 1),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          idNumber,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.textPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 1,
                  height: 16,
                  color: AppTheme.borderGray,
                ),

                // Blood Group Column
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.bloodtype_outlined,
                        size: 13,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(height: 1),
                      Text(
                        bloodGroup,
                        style: const TextStyle(
                          fontSize: 9.5,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // Central Large QR Code Section
          QRSection(qrData: idNumber),
          const SizedBox(height: 6),

          // Location Row (Mandatory Widgets: Row, Icon, Text)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 12,
                color: AppTheme.textMuted,
              ),
              const SizedBox(width: 3),
              Text(
                location,
                style: const TextStyle(
                  fontSize: 10.5,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),

          // Email Container (Mandatory Widgets: Container, Row, Icon, Text)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: AppTheme.lightGray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.email_outlined,
                  size: 10.5,
                  color: AppTheme.mtwDarkBlue,
                ),
                const SizedBox(width: 4),
                Text(
                  email,
                  style: const TextStyle(
                    fontSize: 9.5,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
