import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_pr/food_app/consts/colors.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      'assets/food_app/icons/backward.svg',
                      height: 11,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/food_app/icons/menu.svg',
                    height: 11,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                height: 305,
                width: 305,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: kSecondaryColor),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/food_app/images/image_1_big.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Vegan salad bowl\n',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        TextSpan(
                          text: 'With red tomato',
                          style: TextStyle(color: kTextColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$20',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.19),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Add to bag',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/food_app/icons/forward.svg',
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.19),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(14),
                          height: 55,
                          width: 55,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/food_app/icons/bag.svg',
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              color: kWhiteColor,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    color: kPrimaryColor,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
