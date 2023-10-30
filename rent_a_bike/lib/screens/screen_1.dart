import 'package:flutter/material.dart';

import '../widgets/nav_bar.dart';
import '../widgets/screen_1_widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeAndName(),
                SizedBox(height: 25),
                SearchBike(),
                SizedBox(height: 32),
                Chips(),
                SizedBox(height: 38),
                RichTextWidget(text1: 'Popular', text2: 'items'),
                SizedBox(height: 18),
                BikesList(),
                SizedBox(height: 38),
                RichTextWidget(text1: 'Recently', text2: 'viewed'),
                SizedBox(height: 18),
                RecentlyViewedList()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
