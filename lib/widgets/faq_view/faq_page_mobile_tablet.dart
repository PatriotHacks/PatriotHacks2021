import 'package:flutter/cupertino.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_card.dart';

class FAQPageMobileTablet extends StatelessWidget{

  final SizedBox spaceBetweenCards = SizedBox(height : 20);

  @override
  Widget build(BuildContext context) {

        return Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                    "FAQ",
                    style: TextStyle(
                      fontSize: 30,
                    )
                ),
              ),
              Container(
                  width: 700,
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FAQCard("Do I need to be a student to attend?", "Students who are currently enrolled at a college/university or have graduated within the past 12 months are eligible to attend. Must also be 18 years or older. All disciplines are welcome! If you are not a recent graduate, you may wish to participate this hackathon as a mentor or volunteer. We are in discussion of adding high school students in local Northern Virginia region to participate in this hackathon. Stay tuned."),
                      spaceBetweenCards,
                      FAQCard("How much does it cost?", "Nothing! Attending PatriotHacks is free. Plus, we provide you , swag, and prizes!"),
                    ],
                  )
              ),
              Container(
                  width: 700,
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FAQCard("What should I bring?", "Bring your school or government ID to prove your identity. You should definitly also bring your laptop, phone, and chargers."),
                      spaceBetweenCards,
                      FAQCard("Can anyone mentor or volunteer?", "Of course! Whether you're an experienced student or a working professional, you are welcome to register as a mentor to help students or to host a workshop. You can also register as a volunteer to help with on-site logistics and organizing."),
                    ],
                  )
              ),
              Container(
                  width: 700,
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FAQCard("Are hardware hacks allowed?", "Because of the COVID-19 pandemic, we may offer this option in some alternative format. For now, you may refer to a MLH's Hardware Lab for more information on getting hardware for your hacks."),
                      spaceBetweenCards,
                      FAQCard("What if I don't know how to code?", "No worries! This event welcomes everyone of all skill levels! We will have a bunch of workshops and mentors here to help everyone learn something new, whether you've never touched a line of code or you're a seasoned veteran."),
                    ],
                  )
              ),
              Container(
                  width: 700,
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FAQCard("Do I need to be on a team?", "No worries! This event welcomes everyone of all skill levels! We will have a bunch of workshops and mentors here to help everyone learn something new, whether you've never touched a line of code or you're a seasoned veteran."),
                      spaceBetweenCards,
                      FAQCard
                        ("Will there be travel reimbursement?", "Because of the COVID-19 pandemic, there will be no travel reimbursements. The hackathon will be online."),
                    ],
                  )
              )
            ],
          ),
        );

  }

}