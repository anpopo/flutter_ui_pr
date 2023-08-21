import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/food_app/consts/colors.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
    required this.kcal,
    required this.price,
    required this.onClick,
    super.key,
  });

  final String title;
  final String subTitle;
  final String description;
  final String image;
  final int kcal;
  final int price;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: SizedBox(
          height: 400,
          width: 270,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 380,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(0.06),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: 0,
                child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.15),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: -50,
                child: Container(
                  height: 184,
                  width: 270,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 80,
                child: Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: kPrimaryColor,
                      ),
                ),
              ),
              Positioned(
                top: 200,
                left: 40,
                child: SizedBox(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(color: kTextColor.withOpacity(0.4)),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        description,
                        maxLines: 3,
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.65),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text('$kcal kcal')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
