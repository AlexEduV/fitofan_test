import 'package:fitofan_test/widgets/nav_item.dart';
import 'package:fitofan_test/widgets/side_column_card.dart';
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.0),
              child: Row(
                children: [

                  //'Previous Section' side column
                  SizedBox(
                    width: 280,
                    child: Column(
                      children: [

                        //ticker button
                        TickerButton(
                          text: 'Previous',
                          leadingAssetSrc: 'assets/images/back.png',
                        ),

                        Gap(16.0),

                        SideColumnCard(title: 'Previous'),

                      ],
                    ),
                  ),

                  //'Current' expanded section

                  //'Next' section
                  SizedBox(
                    width: 280,
                  )

                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
