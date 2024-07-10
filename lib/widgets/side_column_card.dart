import 'package:fitofan_test/style/project_colors.dart';
import 'package:flutter/material.dart';

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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: ProjectColors.dividerColor,
            border: const BorderDirectional(
              bottom: BorderSide(
                color: ProjectColors.dividerColor,
              ),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              color: ProjectColors.textSecondaryDarkColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),

        ),

        //list view

        //'show on tv' button

      ],
    );
  }
}
