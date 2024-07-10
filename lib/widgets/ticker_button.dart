import 'package:fitofan_test/style/project_colors.dart';
import 'package:flutter/material.dart';

class TickerButton extends StatelessWidget {

  final String? leadingAssetSrc;
  final String text;
  final String? trailingAssetSrc;

  const TickerButton({
    required this.text,
    this.leadingAssetSrc,
    this.trailingAssetSrc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const double iconSize = 18;
    const Color color = ProjectColors.textPrimaryColor;

    return Container(
      height: 76,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: ProjectColors.dividerColor),
        color: ProjectColors.buttonActiveColor,
      ),
      padding: const EdgeInsets.only(left: 10.0, top: 16.0, right: 10.0, bottom: 12.0),
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          children: [

            //leading icon?
            leadingAssetSrc != null ? Image.asset(
              leadingAssetSrc!,
              height: iconSize,
              width: iconSize,
              color: color,
            ) : const SizedBox.shrink(),

            //text
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: color
              ),
            ),

            //trailing icon?
            trailingAssetSrc != null ? Image.asset(
              trailingAssetSrc!,
              height: iconSize,
              width: iconSize,
              color: color,
            ) : const SizedBox.shrink(),

          ]

        ),
      ),
    );
  }
}
