import 'package:aplanet/common/custum_app_bar.dart';
import 'package:aplanet/common/subscrion_contenar.dart';
import 'package:aplanet/utils/strings.dart';
import 'package:aplanet/utils/textStyles.dart';
import 'package:flutter/material.dart';

class ChoosePanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
                child: Text(
                  Strings.ChoosePlan,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscribionContainer(
                text: Strings.weekSubscription,
                amount: "1.99",
                imagePath: "assets/weekly.jpg",
              ),
              SubscribionContainer(
                text: Strings.oneMonthSubscription,
                amount: "4.33",
                imagePath: "assets/monthly.jpg",
              ),
              SubscribionContainer(
                text: Strings.threeMonthSubscription,
                amount: "9.99",
                imagePath: "assets/3monthly.jpg",
              ),
              SubscribionContainer(
                text: Strings.sixMonthSubscription,
                amount: "13",
                imagePath: "assets/6monthly.jpg",
              ),
            ],
          ),
          Positioned(
            bottom: 48,
            left: 16,
            child: Text(
              Strings.LAST_STEP,
              style: TextStyles.buttonTextStyle,
            ),
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
                    color: Color(0xFFDAD4CC).withOpacity(0.8),
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
          ),
        ],
      ),
    );
  }
}
