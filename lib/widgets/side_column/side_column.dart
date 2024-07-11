import 'package:fitofan_test/widgets/side_column/side_column_card.dart';
import 'package:fitofan_test/widgets/ticker_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SideColumn extends StatelessWidget {
  const SideColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 280,
      height: 742,
      child: Column(
        children: [

          //ticker button
          TickerButton(
            text: 'Previous',
            leadingAssetSrc: 'assets/images/back.png',
          ),

          Gap(16.0),

          Expanded(
            child: SideColumnCard(title: 'Previous'),
          ),

        ],
      ),
    );
  }
}
