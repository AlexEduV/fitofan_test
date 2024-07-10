import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NavItem extends StatelessWidget {
  final String title;
  final String assetSrc;

  const NavItem({
    required this.title,
    required this.assetSrc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: const EdgeInsets.only(left: 10.0, top: 16.0, right: 10.0, bottom: 12.0),
      child: Row(
        children: [

          //nav icon
          Image.asset(
            assetSrc,
            height: 18,
            width: 18,
            color: const Color(0xffe0e3e7),
          ),

          const Gap(8.0),

          //nav text
          Text(
            title,
            style: const TextStyle(
              color: Color(0xffe0e3e7),
              fontWeight: FontWeight.w500,
            ),
          )

        ],
      ),
    );
  }
}
