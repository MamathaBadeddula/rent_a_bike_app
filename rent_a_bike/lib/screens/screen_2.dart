import 'package:flutter/material.dart';

import '../widgets/nav_bar.dart';
import '../widgets/screen_1_widgets.dart';
import '../widgets/screen_2_widgets.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
                BackIconAndBikeDetails(),
                SizedBox(height: 33),
                DetailsAndImage(),
                SizedBox(height: 36),
                RichTextWidget(text1: 'Add', text2: 'items'),
                SizedBox(height: 18),
                AddItemsList()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
