import 'package:flutter/material.dart';

import '../constants/colors.dart';

class RecentlyViewedList extends StatelessWidget {
  const RecentlyViewedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListCard(
          name: 'Hayabusa',
          rate: '2000',
          status: 'Available',
        ),
        SizedBox(height: 6),
        ListCard(
          name: 'Classic 350',
          rate: '1500',
          status: 'Booked',
          isGrey: true,
        ),
        SizedBox(height: 6),
        ListCard(
          name: 'Ninja ZX-10r',
          rate: '2000',
          status: 'Available',
        ),
      ],
    );
  }
}

class BikesList extends StatelessWidget {
  const BikesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BikeCard(
            bikeName: 'Meteor',
            bikeBrand: 'Royal Enfield',
            rate: '699',
          ),
          SizedBox(width: 8),
          BikeCard(
            bikeName: 'Scout Robber',
            bikeBrand: 'Indian',
            rate: '1499',
          ),
          SizedBox(width: 8),
          BikeCard(
            bikeName: 'Rebel 1100',
            bikeBrand: 'Honda',
            rate: '1199',
          ),
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.name,
    required this.rate,
    required this.status,
    this.isGrey,
    this.isNameThin,
  });

  final String name;
  final String rate;
  final String status;
  final bool? isGrey;
  final bool? isNameThin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColors.borderColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset('assets/images/bike.png'),
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        height: 0,
                        fontSize: 18,
                        fontWeight: isNameThin == true
                            ? FontWeight.w500
                            : FontWeight.w700,
                      ),
                    ),
                    PerDayWidget(rate: rate),
                  ],
                )
              ],
            ),
            Container(
              width: 70,
              height: 22,
              decoration: BoxDecoration(
                color: isGrey == true ? AppColors.borderColor : AppColors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  status,
                  style: TextStyle(
                    color: isGrey == true
                        ? AppColors.black
                        : AppColors.scaffoldColor,
                    fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BikeCard extends StatelessWidget {
  const BikeCard({
    super.key,
    required this.bikeName,
    required this.bikeBrand,
    required this.rate,
  });

  final String bikeName;
  final String bikeBrand;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: 145,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/bike.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bikeName,
                  style: const TextStyle(
                    height: 0,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  bikeBrand,
                  style: const TextStyle(
                    height: 0,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 6),
                PerDayWidget(rate: rate),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PerDayWidget extends StatelessWidget {
  const PerDayWidget({
    super.key,
    required this.rate,
    this.isWhite,
  });
  final String rate;
  final bool? isWhite;

  @override
  Widget build(BuildContext context) {
    return RichTextWidget(
      text1: '$rate/',
      perDay: true,
      isWhite: isWhite,
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
    required this.text1,
    this.text2,
    this.perDay,
    this.isWhite,
  });

  final String text1;
  final String? text2;
  final bool? perDay;
  final bool? isWhite;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: text1,
            style: TextStyle(
              fontSize: perDay == true ? 18 : 21,
              fontWeight: perDay == true ? FontWeight.w400 : FontWeight.w700,
              color:
                  isWhite == true ? AppColors.scaffoldColor : AppColors.black,
            ),
          ),
          TextSpan(
            text: text2 != null ? ' $text2' : ' per day',
            style: TextStyle(
              fontSize: perDay == true ? 16 : 21,
              fontWeight: FontWeight.w300,
              color:
                  isWhite == true ? AppColors.scaffoldColor : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Chips extends StatelessWidget {
  const Chips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SelectionChip(
            text: 'Adventure',
          ),
          SelectionChip(
            text: 'Cruiser',
            bgColor: AppColors.black,
          ),
          SelectionChip(
            text: 'Sportsbike',
          ),
          SelectionChip(
            text: 'Tourer',
          ),
        ],
      ),
    );
  }
}

class SelectionChip extends StatelessWidget {
  const SelectionChip({
    super.key,
    required this.text,
    this.bgColor,
  });

  final String text;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(
            width: 2,
            color: AppColors.borderColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: bgColor != null ? AppColors.scaffoldColor : null,
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBike extends StatelessWidget {
  const SearchBike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // width: 324,
      decoration: const BoxDecoration(
        color: AppColors.searchBarColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          hintText: 'Search Bike',
          hintStyle: const TextStyle(
            color: AppColors.hintTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          isDense: true,
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: AppColors.hintTextColor,
          ),
          filled: true,
          fillColor: AppColors.searchBarColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}

class WelcomeAndName extends StatelessWidget {
  const WelcomeAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 16),
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset('assets/images/profile_picture.png'),
        ),
        const SizedBox(width: 14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                color: AppColors.welcomeTextColor,
                fontSize: 12,
              ),
            ),
            Text(
              'Abhi Tiwari',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ],
        )
      ],
    );
  }
}
