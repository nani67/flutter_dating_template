import 'package:flutter/material.dart';
import 'package:flutter_dating_template/wcao/ui/theme.dart';

class AgreementUser extends StatefulWidget {
  const AgreementUser({Key? key}) : super(key: key);

  @override
  State<AgreementUser> createState() => _AgreementUserState();
}

class _AgreementUserState extends State<AgreementUser> {
  List<String> txt = ["After the user completes all the registration steps according to the prompts given on the page, he or she becomes our user. The user should keep his or her account and password, and use his or her account and password accurately and securely. Users can set their own settings to provide users with personalized information. information services."
"Users fully understand and agree that this platform provides users with personalized information services. Users must be responsible for their actions under their registered accounts, including any content imported, uploaded, and transmitted by users and any consequences arising therefrom. Users shall be responsible for the content Use your own judgment and bear all risks arising from the use of the content. We are not responsible for losses caused by user behavior. ",
    "This APP platform is not responsible for any leakage, loss, theft or tampering of personal data caused by hacker attacks, computer virus intrusions or outbreaks, temporary closures due to government controls, or other force majeure that affects normal network operations. ","If the personal information provided by the user or the information published is untrue, inaccurate, or illegal; if the published content does not comply with this agreement or the published content does not comply with laws and regulations, we have the right to suspend or terminate the user's use of the platform's services. If the user has any objection to this If there is any objection to the APP's suspension or termination or withdrawal of its account, customers can submit opinions to the platform and request it to continue to provide services. We receive complaints and opinions from customers on this type of information, and will review the relevant information and provide feedback to users in a timely manner. If the information is indeed untrue or inaccurate or illegal, this platform requires users to provide information that meets the requirements. ",
"If users of this APP platform violate the laws of the People's Republic of China by violating the provisions of this statement, they are responsible for all consequences. This APP platform does not assume any responsibility.",
    "This APP platform does not guarantee the accuracy and completeness of external links set up to provide convenience to users. At the same time, for the content on any webpage or platform that these external links point to that is not actually controlled by this APP platform, this APP platform No responsibility is assumed.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Agreement"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: WcaoTheme.base),
              child: Column(
                children: txt
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.only(bottom: 32),
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
