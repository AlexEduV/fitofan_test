import 'package:fitofan_test/style/project_colors.dart';
import 'package:fitofan_test/widgets/side_column_card/match_tile.dart';
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
            padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
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

                return MatchTile(index: index);
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
