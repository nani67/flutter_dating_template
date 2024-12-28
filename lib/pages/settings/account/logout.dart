import 'package:flutter/material.dart';
import 'package:flutter_dating_template/state/token.dart';
import 'package:flutter_dating_template/wcao/kit/index.dart';
import 'package:flutter_dating_template/wcao/ui/theme.dart';
import 'package:get/get.dart';

class AccountLogout extends StatefulWidget {
  const AccountLogout({Key? key}) : super(key: key);

  @override
  State<AccountLogout> createState() => _AccountLogoutState();
}

class _AccountLogoutState extends State<AccountLogout> {
  List<String> texts = ['After the user completes all the registration steps according to the prompts given on the page, he or she will become a Zhiwen user. The user should keep his/her account and password by himself, and use his/her account and password accurately and safely. Zhiwen can provide users with personalized information services through user settings. ',
    'Users fully understand and agree that this platform provides users with personalized information services. Users must be responsible for their actions under their registered accounts, including any content imported, uploaded, and transmitted by users and any consequences arising therefrom. Users should be aware of You shall make your own judgment on the content of the news and bear all risks arising from the use of the content. Zhiwen is not responsible for losses caused by user behavior. ',
    "This APP platform is not responsible for any leakage, loss, theft or tampering of personal data caused by hacker attacks, computer virus intrusions or outbreaks, temporary closures due to government controls, or other force majeure that affects normal network operations. ",
    "If the personal information provided by the user or the information published is untrue, inaccurate, or illegal; if the published content does not comply with this agreement or the published content does not comply with laws and regulations, Zhiwen has the right to suspend or terminate the user's use of the platform's services. If the user Object to Zhiwen’s suspension, termination or withdrawal of his account , customers can submit comments to the platform and request it to continue to provide services. Zhiwen will review the relevant information and provide feedback to the user in a timely manner if the information is indeed untrue, inaccurate or illegal. Valid, Zhiwen Platform requires users to provide information that meets the requirements. ",
    "If users of this APP platform violate the laws of the country by violating the provisions of this statement, they are responsible for all consequences. This APP platform does not assume any responsibility.",
    "This APP platform does not guarantee the accuracy and completeness of external links set up to provide convenience to users. At the same time, for the content on any webpage or platform that these external links point to that is not actually controlled by this APP platform, this APP platform No responsibility is assumed."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account log out'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Before you decide to cancel account, please read the following content carefully',
                  style: TextStyle(
                    fontSize: WcaoTheme.fsBase * 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: texts
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.only(top: 24),
                          child: Text(
                            e,
                            style: TextStyle(
                              fontSize: WcaoTheme.fsL,
                              height: 1.75,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                InkWell(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Confirm Account cancellation?'),
                      content: const Text('If you cancel your account, your data will not be retrieved.'),
                      buttonPadding: EdgeInsets.zero,
                      actions: [
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                  Get.back();
                                  await WcaoUtils.loading(msg: "Cancelling account...");
                                  TokenController.to.delete();
                                  await Future.delayed(
                                      const Duration(seconds: 1));
                                  WcaoUtils.dismiss();
                                  Get.offAllNamed('/login/verify-code');
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: .5,
                                        color: WcaoTheme.outline,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Cancel account',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: WcaoTheme.fsL,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () => Get.back(),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: .5,
                                        color: WcaoTheme.outline,
                                      ),
                                    ),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: WcaoTheme.primary,
                                      fontSize: WcaoTheme.fsL,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      actionsPadding: EdgeInsets.zero,
                    ),
                  ),
                  // onTap: () async {

                  //   await WcaoUtils.loading();
                  //   TokenController.to.delete();
                  //   await Future.delayed(const Duration(seconds: 2));
                  //   WcaoUtils.dismiss();
                  //   Get.offAllNamed('/login/verify-code');
                  // },
                  child: Container(
                    margin: const EdgeInsets.only(top: 36),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: WcaoTheme.radius,
                    ),
                    child: const Text(
                      'Confirm logout',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
