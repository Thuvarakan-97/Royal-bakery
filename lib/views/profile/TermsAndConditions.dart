import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/base.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: hh(context, 50)),
            Padding(
              padding: EdgeInsets.only(left: ww(context, 10)),
              child: Material(
                borderRadius: BorderRadius.circular(hh(context, 50)),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => popTo(context),
                  borderRadius: BorderRadius.circular(hh(context, 50)),
                  child: Container(
                    padding: EdgeInsets.all(ww(context, 10)),
                    child: SvgPicture.asset(
                      "Left".toIcon,
                      width: ww(context, 22),
                      color: textPrimary(context),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: Text(
                "TERMS AND CONDITIONS",
                style: head36(context, textPrimary(context)),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            ...List.generate(5, (index) => RuleItem()),
          ],
        ),
      ),
    );
  }
}

class RuleItem extends StatelessWidget {
  const RuleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        horizontalpadding(
          context,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Our Guarantee",
                style: head24(context, textPrimary(context)),
              ),
              SizedBox(height: hh(context, 5)),
              Text(
                "Out of the Bubble Bakery will provide a professionally decorated dessert in a timely manner as specified in the invoice or contract.  We appreciate your business and we are honored that you have chosen us for your special celebration. We guarantee that the flavors, size, and general design elements will be met as outlined. If you are not satisfied with our product(s) please let us know at the time you receive your order.",
                style: body(context, textSecondary),
              )
            ],
          ),
        ),
        SizedBox(height: hh(context, 20)),
      ],
    );
  }
}

