import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';

class PSQIDetail extends StatelessWidget {
  static String routeName = "/psqi_detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
              image: AssetImage("assets/images/insomnia.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            )),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/home"),
                    child: SvgPicture.asset("assets/icons/arrow-left.svg"),
                  ),
                  SvgPicture.asset("assets/icons/more-vertical.svg"),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
              Text(
                "PSQI 검사",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: getProportionateScreenWidth(34),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Text(
                "PSQI (Pittsburgh Sleep Quality Index) 검사는 미국의 피츠버그 대학 연구팀에 의해 개발된 검사로, 수면의 상태에 대해 평가할 수 있는 검사입니다.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(flex: 4),
              DefaultButton(
                text: "시작하기",
                press: () => Navigator.pushNamed(context, "/psqi_main"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
