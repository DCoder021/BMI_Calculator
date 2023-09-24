import 'package:flutter/material.dart';
import '../component/reusable_card.dart';
import '../constant.dart';
import '../component/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            padding: EdgeInsetsDirectional.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('YOUR RESULT',
            style: kTitleTextStyle,),
          )),
          Expanded(
            flex: 5,
              child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(resultText.toUpperCase(),
                style: kResultTextStyle),
                Text(
                  bmiResult,
                  style: kBmiTextStyle,
                ),
                Text(interpretation,
                style: kBodyTestStyle,
                textAlign: TextAlign.center,)
              ],
            )
          )),
          BottomButton(buttonTitle: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },)
        ],
      )
    );
  }
}
