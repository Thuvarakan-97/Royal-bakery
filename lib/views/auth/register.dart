import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/core/init/navigate.dart';
import 'package:foode/views/views_shelf.dart';

class Register extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _phoneController = TextEditingController();

  void initState() {
    _fullnameController;
    _emailController;
    _passwordController;
    _phoneController;
  }

  @override
  Widget build(BuildContext context) {
    print((h(context) * 62) / 812);
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "REGISTER",
              onTap: () => replaceTo(context, GetStarted()),
            ),
            SizedBox(height: hh(context, 60.33)),
            horizontalpadding(
              context,
              child: SolidInput(
                controller: _fullnameController,
                label: "FULL NAME",
                hintText: "Enter your full name",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidInput(
                controller: _emailController,
                label: "EMAIL",
                hintText: "johndoe@email.com",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidInput(
                controller: _phoneController,
                label: "PHONE",
                hintText: "+94 077 123 4567",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidInput(
                controller: _passwordController,
                label: "PASSWORD",
                hintText: "Password",
                iconName: "Eye Open",
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: w20(context)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: body(context, textSecondary),
                ),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                onTap: () => signIn(context),
                text: "REGISTER",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: body(context, textSecondary),
                ),
                TextButton(
                  onPressed: () => pushTo(context, Login()),
                  child: Text(
                    "Login",
                    style: body(context, AppColors.secondary),
                  ),
                ),
              ],
            ),
            SizedBox(height: hh(context, 50)),
          ],
        ),
      ),
    );
  }

  Future signIn(BuildContext context) async {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        )
        .then((value) => pushTo(context, AddressSetup()));
  }
}
