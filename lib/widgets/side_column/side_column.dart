import 'package:fitofan_test/widgets/side_column/matches_card.dart';
import 'package:fitofan_test/widgets/ticker_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SideColumn extends StatelessWidget {

  final String? pagerLeadingAssetSource;
  final String? pagerTrailingAssetSource;
  final String pagerText;
  final String matchesCardTitle;
  final bool isBottomButtonShown;

  const SideColumn({
    required this.pagerText,
    required this.matchesCardTitle,
    this.pagerLeadingAssetSource,
    this.pagerTrailingAssetSource,
    this.isBottomButtonShown = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 280,
      height: 742,
      child: Column(
        children: [

          //ticker button
          TickerButton(
            text: pagerText,
            leadingAssetSrc: pagerLeadingAssetSource,
            trailingAssetSrc: pagerTrailingAssetSource,
          ),

          const Gap(16.0),

          Expanded(
            child: MatchesCard(
              title: matchesCardTitle,
              isBottomButtonShown: isBottomButtonShown,
            ),
          ),

        ],
      ),
    );
  }
}
