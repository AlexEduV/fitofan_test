import 'package:fitofan_test/style/project_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ParticipantRow extends StatelessWidget {
  final String name;
  final bool showTag;
  final String badgeText;
  final Color color;

  const ParticipantRow({
    required this.name,
    required this.showTag,
    required this.badgeText,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: color,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [

          //name
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                color: ProjectColors.textPrimaryColor,
              ),
            ),
          ),

          const Gap(10.0),

          //winner badge (optional)
          Visibility(
            visible: showTag,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffea9c0f),
                    Color(0xffED6B0E),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                badgeText,
                style: const TextStyle(
                  color: Color(0xff761D11),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
