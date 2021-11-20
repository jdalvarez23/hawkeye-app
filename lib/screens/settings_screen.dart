import 'package:flutter/material.dart';
import 'package:hawkeye/theme.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: 'ACCOUNT',
              tiles: [
                SettingsTile(title: 'Email', leading: Icon(Icons.email)),
                SettingsTile(
                    title: 'Change Password', leading: Icon(Icons.lock))
              ],
            ),
            SettingsSection(
              title: 'ABOUT',
              tiles: [
                SettingsTile(
                  title: 'Version',
                  subtitle: "v1.0.0",
                  iosChevron: null,
                ),
                SettingsTile(
                    title: 'Privacy Policy', leading: Icon(Icons.privacy_tip)),
                SettingsTile(
                    title: 'Terms of Service', leading: Icon(Icons.description))
              ],
            ),
            SettingsSection(tiles: [
              SettingsTile(
                title: 'Logout',
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                titleTextStyle: TextStyle(color: Colors.red),
              ),
            ])
          ],
        ));
  }
}
