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
                  )

                  //navigation pages

                ],
              ),
            )

            // main section row

              //'Previous Section'

              //'Current' section

              //'Next' section

          ],
        )
      ),
    );
  }
}
