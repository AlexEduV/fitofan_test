import 'package:fitofan_test/style/project_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ParticipantCard extends StatelessWidget {
  final List<Color> gradientColors;
  final String name;
  final String assetSrc;
  final String combatName;
  final String coachName;

  const ParticipantCard({
    required this.gradientColors,
    required this.name,
    required this.assetSrc,
    required this.combatName,
    required this.coachName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //photo
          Container(
            width: 173,
            height: 173,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.grey,
            ),
          ),

          const Gap(16.0),

          //info column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //name (2 lines)
              Text(
                name,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  color: ProjectColors.surfaceWhiteColor,
                ),
                maxLines: 2,
              ),

              const Gap(8.0),

              //combat
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //combat
                  Text('Combat: $combatName'),

                  const Gap(4.0),

                  //coach
                  Text('Coach: $coachName'),
                ],
              ),

            ],
          )

          //actions row
        ],
      ),
    );
  }
}
