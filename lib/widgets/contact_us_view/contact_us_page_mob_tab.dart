import 'package:flutter/cupertino.dart';


class ContactUsPageMobile extends StatelessWidget{

  final SizedBox spaceBetweenCards = SizedBox(width: 100);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            "Contact Us",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("For more information, email team@patriothacks.org"),
              spaceBetweenCards,
            ],//child
          ),
        ),
      ],
    );
  }
}