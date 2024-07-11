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
              image: DecorationImage(
                image: AssetImage(assetSrc),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const Gap(16.0),

          //info column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //name (2 lines)
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          color: ProjectColors.surfaceWhiteColor,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),

                const Gap(8.0),

                //combat
                Wrap(
                  spacing: 4,
                  direction: Axis.vertical,
                  children: [

                    //combat
                    Text('Combat: $combatName'),

                    //coach
                    Text('Coach: $coachName'),
                  ],
                ),

              ],
            ),
          ),

          const Gap(16.0),

          //actions row
          Wrap(
            spacing: 8,
            children: [

              //penalty secondary button
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(color: ProjectColors.textPrimaryColor),
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: const Text(
                  'Penalty',
                  style: TextStyle(
                    height: 1.1,
                    fontWeight: FontWeight.w500,
                    color: ProjectColors.textPrimaryColor,
                  ),
                ),
              ),

              const Gap(8.0),

              //more button
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white.withOpacity(0.1),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/more.png',
                  height: 24,
                  width: 24,
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}
