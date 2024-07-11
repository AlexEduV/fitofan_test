import 'package:fitofan_test/style/project_colors.dart';
import 'package:fitofan_test/widgets/nav_item.dart';
import 'package:fitofan_test/widgets/side_column/matches_card.dart';
import 'package:fitofan_test/widgets/side_column/side_column.dart';
import 'package:fitofan_test/widgets/ticker_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            // navigation bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //logo
                  Row(
                    children: [

                      //company logo
                      Image.asset('assets/images/company-logo.png'),

                      const Gap(8.0),

                      //company name
                      Image.asset('assets/images/company-name.png'),

                    ],
                  ),

                  //navigation bar
                  const Wrap(
                    spacing: 16,
                    children: [
                      
                      NavItem(title: 'Promo', assetSrc: 'assets/images/nav_promo.png',),
                      
                      NavItem(title: 'Matches', assetSrc: 'assets/images/nav_matches.png'),

                      NavItem(title: 'Judges', assetSrc: 'assets/images/nav_judges.png'),

                      NavItem(title: 'Screen', assetSrc: 'assets/images/nav_screen.png'),

                      NavItem(title: 'Settings', assetSrc: 'assets/images/nav_settings.png'),

                    ],
                  ),

                ],
              ),
            ),

            // main section row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //'Previous' side column
                  const SideColumn(
                    pagerText: 'Previous',
                    matchesCardTitle: 'Previous',
                    pagerLeadingAssetSource: 'assets/images/back.png',
                    isBottomButtonShown: true,
                  ),

                  const Gap(16.0),

                  //Central column
                  Expanded(
                    child: Column(
                      children: [

                        //title
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: ProjectColors.dividerColor,
                            ),
                            color: ProjectColors.surfaceBlackColor,
                          ),
                          padding: const EdgeInsets.all(16.0),
                        )

                      ],
                    ),
                  ),

                  const Gap(16.0),

                  //'Next' side column
                  const SideColumn(
                    pagerText: 'Next',
                    matchesCardTitle: 'Next',
                    pagerTrailingAssetSource: 'assets/images/forward.png',
                  ),

                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
