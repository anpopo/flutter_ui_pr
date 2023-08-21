import 'package:flutter/material.dart';
import 'package:flutter_ui_pr/auth_template/components/custom_button.dart';
import 'package:flutter_ui_pr/auth_template/components/custom_text_field.dart';
import 'package:flutter_ui_pr/auth_template/consts/colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/auth_template/person_holding_dough.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SIGN IN',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        const Text('SIGN UP',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                            )),
                      ],
                    ),
                    const Spacer(flex: 1),
                    const CustomTextField(
                      hintText: 'Email Address',
                      iconData: Icons.alternate_email,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const CustomTextField(
                      hintText: 'Password',
                      iconData: Icons.lock,
                      isObscure: true,
                    ),
                    const Spacer(flex: 3),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 32),
                      child: Row(
                        children: [
                          CustomButton(iconData: Icons.facebook),
                          SizedBox(width: 12),
                          CustomButton(iconData: Icons.chat),
                          Spacer(),
                          CustomButton(
                            iconData: Icons.arrow_forward,
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
