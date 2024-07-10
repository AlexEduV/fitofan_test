import 'package:fitofan_test/style/project_colors.dart';
import 'package:fitofan_test/widgets/side_column_card/participant_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SideColumnCard extends StatelessWidget {
  final String title;

  const SideColumnCard({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        // card title
        Container(
          width: double.maxFinite,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.0),
              topLeft: Radius.circular(16.0),
            ),
            color: ProjectColors.dividerColor,
            border: BorderDirectional(
              bottom: BorderSide(
                color: ProjectColors.dividerColor,
              ),
            ),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(
              color: ProjectColors.textSecondaryDarkColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),

        ),

        //list view
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: ProjectColors.dividerColor),
                left: BorderSide(color: ProjectColors.dividerColor),
              ),
              color: ProjectColors.surfaceBlackColor,
            ),
            child: ListView.separated(
              itemCount: 7,
              itemBuilder: (_, int index) {
                return Container(
                  decoration: const BoxDecoration(
                    border: BorderDirectional(
                      bottom: BorderSide(
                        color: ProjectColors.dividerColor,
                      ),
                    ),
                    //color: ProjectColors.surfaceBlackColor,
                  ),
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    children: [

                      //item number
                      Container(
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: ProjectColors.dividerColor,
                        ),
                        child: Text(
                          (index + 1).toString(),
                        ),
                      ),

                      const Gap(8.0),

                      //participants column with one winner
                      Expanded(
                        child: const Column(
                          children: [

                            ParticipantRow(name: 'Zhou Emma', showTag: true, badgeText: 'Winner', color: ProjectColors.participant1Color),

                          ],
                        ),
                      )

                    ],
                  ),
                );
              },
              separatorBuilder: (_, int index) {

                return const Gap(16.0);
              },
            ),
          ),
        )

        //'show on tv' button

      ],
    );
  }
}
