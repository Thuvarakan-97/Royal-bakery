import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode/core/theme/theme_shelf.dart';

Widget logo(BuildContext context, {TextStyle? foodStyle, TextStyle? eStyle}) =>
    RichText(
      text: TextSpan(
        style: foodStyle ?? head36(context, textPrimary(context)),
        children: [
          TextSpan(
            text: "Royal",
          ),
          TextSpan(
            text: "Bakery",
            style: eStyle ?? head36(context, Colors.amber),
          ),
        ],
      ),
    );
