import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../theme/app_theme.dart';

class QRSection extends StatelessWidget {
  final String qrData;

  const QRSection({
    super.key,
    this.qrData = 'MTW26GLCR47C6',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // High quality QR Code Widget
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppTheme.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: QrImageView(
            data: qrData,
            version: QrVersions.auto,
            size: 140.0,
            eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square,
              color: AppTheme.textPrimary,
            ),
            dataModuleStyle: const QrDataModuleStyle(
              dataModuleShape: QrDataModuleShape.square,
              color: AppTheme.textPrimary,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        const SizedBox(height: 4),
        // QR Code Text
        Text(
          qrData,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.4,
            color: AppTheme.textPrimary,
          ),
        ),
      ],
    );
  }
}
