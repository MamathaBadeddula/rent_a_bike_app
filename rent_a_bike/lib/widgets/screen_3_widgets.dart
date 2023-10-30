import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'screen_2_widgets.dart';

class PayButton extends StatelessWidget {
  const PayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'PAY',
            style: TextStyle(
              color: AppColors.scaffoldColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Divider(
          color: AppColors.borderColor,
          thickness: 1,
        ),
        SubDetails(
          name: 'Details',
          value: '4',
        ),
        SubDetails(
          name: 'Rent',
          value: '₹ 5996',
        ),
        SubDetails(
          name: 'Additional Items',
          value: '₹ 6400',
        ),
        SubDetails(
          name: 'Coupon Discount',
          value: '₹   396',
        ),
        Divider(
          color: AppColors.borderColor,
          thickness: 1,
        ),
        SubDetails(
          name: 'Total Amount',
          value: '₹ 12000',
          isBold: true,
        ),
      ],
    );
  }
}

class SubDetails extends StatelessWidget {
  const SubDetails({
    super.key,
    required this.name,
    required this.value,
    this.isBold,
  });

  final String name;
  final String value;
  final bool? isBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: isBold == true ? FontWeight.w700 : FontWeight.w300,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: isBold == true ? FontWeight.w700 : FontWeight.w300,
          ),
        ),
      ],
    );
  }
}

class ApplyCouponWidget extends StatelessWidget {
  const ApplyCouponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Apply Coupon',
            style: TextStyle(
              color: AppColors.categoryColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class StartAndEndDateCard extends StatelessWidget {
  const StartAndEndDateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 183,
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.circular(26),
      ),
      child: const Padding(
        padding: EdgeInsets.all(17.0),
        child: Column(
          children: [
            DateCard(
              title: 'Start Date',
              date: '09-06-2021',
            ),
            SizedBox(height: 9),
            DateCard(
              title: 'End Date',
              date: '12-06-2021',
            ),
          ],
        ),
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  const DateCard({
    super.key,
    required this.title,
    required this.date,
  });

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.dateCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60.0, 6.0, 30.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.dateTextColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 32,
              height: 30,
              child: Image.asset(
                'assets/images/2012.png',
                color: AppColors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BackIconAndCheckOut extends StatelessWidget {
  const BackIconAndCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackIconAndBikeDetails(
      checkout: 'Check Out',
    );
  }
}
