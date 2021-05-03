import 'package:aplanet/utils/strings.dart';
import 'package:aplanet/utils/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Container(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: Strings.APP_NAME,
                  style: TextStyles.appNameTextStyle,
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: Strings.TAG_LINE,
                    style: TextStyles.taglineTextStyle,
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.menu,
            color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
