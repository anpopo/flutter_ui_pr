import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_pr/food_app/components/custom_menu_bar.dart';
import 'package:flutter_ui_pr/food_app/components/food_card.dart';
import 'package:flutter_ui_pr/food_app/consts/colors.dart';
import 'package:flutter_ui_pr/food_app/screens/food_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () async {
          await showDialog<Text>(
            context: context,
            builder: (ctx) => const AlertDialog(
              title: Text('Good morning'),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor.withOpacity(0.26),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
            ),
            child: SvgPicture.asset('assets/food_app/icons/plus.svg'),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/food_app/icons/menu.svg',
                  height: 11,
                ),
              ),
              Text(
                'Simple way to find \nTasty food',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CustomMenuBar(),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 24),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kBorderColor)),
                height: 50,
                width: double.infinity,
                child: SvgPicture.asset('assets/food_app/icons/search.svg'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      title: 'Vegan salad bowl',
                      subTitle: 'With red tomato',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                      image: 'assets/food_app/images/image_1.png',
                      kcal: 420,
                      price: 20,
                      onClick: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<FoodDetailScreen>(
                            builder: (ctx) => const FoodDetailScreen(),
                          ),
                        );
                      },
                    ),
                    FoodCard(
                      title: 'Vegan salad bowl',
                      subTitle: 'With red tomato',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                      image: 'assets/food_app/images/image_2.png',
                      kcal: 420,
                      price: 20,
                      onClick: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<FoodDetailScreen>(
                            builder: (ctx) => const FoodDetailScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
