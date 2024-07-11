import 'package:fitofan_test/style/project_colors.dart';
import 'package:fitofan_test/widgets/side_column/participant_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MatchTile extends StatelessWidget {
  final int index;

  const MatchTile({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            color: ProjectColors.dividerColor,
          ),
        ),
        //color: ProjectColors.surfaceBlackColor,
      ),
      padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            //item number
            Container(
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: ProjectColors.dividerColor,
              ),
              child: Center(
                child: Text(
                  (index + 1).toString(),
                ),
              ),
            ),

            const Gap(4.0),

            //participants column with one winner
            const Expanded(
              child: Column(
                children: [

                  ParticipantRow(
                    name: 'Zhou Emma',
                    showTag: true,
                    badgeText: 'Winner',
                    color: ProjectColors.participant1Color,
                  ),

                  Gap(4.0),

                  ParticipantRow(
                    name: 'Zhou Emma',
                    showTag: false,
                    badgeText: 'Winner',
                    color: ProjectColors.participant2Color,
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
