import 'package:fitofan_test/style/project_colors.dart';
import 'package:fitofan_test/widgets/main_section/participant_card.dart';
import 'package:fitofan_test/widgets/nav_item.dart';
import 'package:fitofan_test/widgets/side_column/side_column.dart';
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
                      
                      NavItem(title: 'Promo', assetSrc: 'assets/images/navigation/nav_promo.png',),
                      
                      NavItem(title: 'Matches', assetSrc: 'assets/images/navigation/nav_matches.png'),

                      NavItem(title: 'Judges', assetSrc: 'assets/images/navigation/nav_judges.png'),

                      NavItem(title: 'Screen', assetSrc: 'assets/images/navigation/nav_screen.png'),

                      NavItem(title: 'Settings', assetSrc: 'assets/images/navigation/nav_settings.png'),

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
                          child: Row(
                            children: [

                              //badge
                              Container(
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: ProjectColors.dividerColor,
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: const Text(
                                  '#5',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: ProjectColors.textPrimaryColor,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1
                                  ),
                                ),
                              ),

                              const Gap(16.0),

                              //title text
                              const Text(
                                'Day 1, Dojang 1, №1 All. Poomsae',
                                style: TextStyle(
                                  color: ProjectColors.textSecondaryDarkColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1,
                                ),
                              ),


                            ],
                          ),
                        ),

                        const Gap(16.0),

                        //main section
                        Container(
                          height: 650,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(color: ProjectColors.dividerColor),
                            color: ProjectColors.surfaceBlackColor,
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: const Column(
                            children: [

                              ParticipantCard(
                                  gradientColors: [
                                    Color(0xff0c2052),
                                    Color(0xff163692)
                                  ],
                                  name: 'Shirin Shirinov',
                                  assetSrc: '',
                                  combatName: 'Kombat',
                                  coachName: 'Coach',
                              )

                            ],
                          ),

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
