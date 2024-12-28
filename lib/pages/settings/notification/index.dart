import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dating_template/wcao/ui/cell.dart';

/// HACK: 消息通知

class SettingsNotification extends StatefulWidget {
  const SettingsNotification({Key? key}) : super(key: key);

  @override
  State<SettingsNotification> createState() => _SettingsNotificationState();
}

class _SettingsNotificationState extends State<SettingsNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Cell(
                'Allow new message notification',
                right: Transform.scale(
                  scale: .8,
                  child: CupertinoSwitch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Cell(
                'Sound Prompt',
                right: Transform.scale(
                  scale: .8,
                  child: CupertinoSwitch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Cell(
                'Vibration Reminder',
                right: Transform.scale(
                  scale: .8,
                  child: CupertinoSwitch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
