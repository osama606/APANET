import 'package:aplanet/common/custum_app_bar.dart';
import 'package:aplanet/screens/choose_plan.dart';
import 'package:aplanet/utils/strings.dart';
import 'package:aplanet/utils/textStyles.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/elephant.jpg",
            height: height,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: [
              CustomAppBar(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 32, left: 32, right: 32),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.READY_TO_WATCH,
                        style: TextStyles.bigHeadingTextStyle,
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: Strings.READY_TO_WATCH_DESC,
                        style: TextStyles.bodyTextStyle,
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: Strings.START_ENJOYING,
                        style: TextStyles.buttonTextStyle,
                      ),
                      TextSpan(text: "\n"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ChoosePanScreen()));
                 },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFD3A070).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4,-0.4),
                  child: Icon(Icons.arrow_forward,
                  color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
