import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'screen_1_widgets.dart';

class AddItemsList extends StatelessWidget {
  const AddItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListCard(
          name: 'Riding Jacket',
          rate: '800',
          status: '1',
          isNameThin: true,
        ),
        SizedBox(height: 6),
        ListCard(
          name: 'Riding Gloves',
          rate: '800',
          status: 'Add',
          isGrey: true,
          isNameThin: true,
        ),
        SizedBox(height: 6),
        ListCard(
          name: 'Helmet',
          rate: '800',
          status: '1',
          isNameThin: true,
        ),
        SizedBox(height: 6),
        ListCard(
          name: 'Riding Boots',
          rate: '800',
          status: '1',
          isNameThin: true,
        ),
      ],
    );
  }
}

class DetailsAndImage extends StatelessWidget {
  const DetailsAndImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        DetailsColumn(),
        SizedBox(width: 8),
        Column(
          children: [
            SingleBikeCard(),
            SizedBox(height: 15),
            RentCard(),
          ],
        )
      ],
    );
  }
}

class DetailsColumn extends StatelessWidget {
  const DetailsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Indian',
          style: TextStyle(
            height: 0,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'Scout Bobber',
          style: TextStyle(
            height: 0,
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 29),
        CategoryChip(
          title: 'Category',
          value: 'Cruiser',
        ),
        SizedBox(height: 29),
        CategoryChip(
          title: 'Displacement',
          value: '1133 cc',
        ),
        SizedBox(height: 29),
        CategoryChip(
          title: 'Max. Speed',
          value: '124 km/h',
        )
      ],
    );
  }
}

class SingleBikeCard extends StatelessWidget {
  const SingleBikeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 203,
      height: 282,
      decoration: const BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Image.asset('assets/images/scout_bobber.png'),
    );
  }
}

class RentCard extends StatelessWidget {
  const RentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 63,
      decoration: const BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Column(
        children: [
          Text(
            'Rent',
            style: TextStyle(
              color: AppColors.scaffoldColor,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          PerDayWidget(
            rate: '1499',
            isWhite: true,
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                height: 0,
                color: AppColors.categoryColor,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                height: 0,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackIconAndBikeDetails extends StatelessWidget {
  const BackIconAndBikeDetails({
    super.key,
    this.checkout,
  });

  final String? checkout;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackIcon(
          onBack: () {
            Navigator.of(context).pop();
          },
        ),
        Container(
          height: 60,
          width: 274,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: AppColors.borderColor,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              checkout ?? 'Bike Details',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
    required this.onBack,
  });

  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onBack,
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: AppColors.gradientColors,
          ),
          shape: BoxShape.circle,
        ),
        height: 30,
        width: 30,
        child: const Center(child: Icon(Icons.arrow_back)),
      ),
    );
  }
}
