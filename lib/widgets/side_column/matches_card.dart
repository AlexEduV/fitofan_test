import 'package:fitofan_test/style/project_colors.dart';
import 'package:fitofan_test/widgets/side_column/match_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MatchesCard extends StatelessWidget {
  final String title;
  final bool isBottomButtonShown;

  const MatchesCard({
    required this.title,
    this.isBottomButtonShown = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        // headline
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
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

        ),

        //list view
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            decoration: BoxDecoration(
              border: const Border(
                right: BorderSide(color: ProjectColors.dividerColor),
                left: BorderSide(color: ProjectColors.dividerColor),
              ),
              color: ProjectColors.surfaceBlackColor,
              borderRadius: !isBottomButtonShown ? const BorderRadius.only(
                bottomRight: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ) : null,
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
        ),

        //'show on tv' button
        Visibility(
          visible: isBottomButtonShown,
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              color: ProjectColors.dividerColor,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: ProjectColors.buttonActiveColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
              alignment: Alignment.center,
              child: const Text(
                'Show on TV',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.surfaceWhiteColor,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
