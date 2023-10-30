import 'package:flutter/material.dart';

import '../widgets/nav_bar.dart';
import '../widgets/screen_3_widgets.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
                BackIconAndCheckOut(),
                SizedBox(height: 32),
                StartAndEndDateCard(),
                SizedBox(height: 38),
                ApplyCouponWidget(),
                SizedBox(height: 31),
                PriceDetails(),
                SizedBox(height: 71),
                PayButton(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
