import 'package:flutter/material.dart';
import 'package:hawkeye/theme.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:hawkeye/classes/ThemeState.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool sendNotifications = true;
  ThemeState themeMode = ThemeState.systemsDefault;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(title: 'PREFERENCES', tiles: [
              SettingsTile.switchTile(
                title: 'Notifications',
                leading: Icon(Icons.notifications),
                onToggle: (value) {
                  print("notifications toggled: ${value}");
                  setState(() {
                    sendNotifications = value;
                  });
                },
                switchValue: sendNotifications,
                switchActiveColor: themePrimaryColor,
              ),
              SettingsTile(
                title: 'Theme',
                leading: Icon(Icons.dark_mode),
                subtitle: ThemeHelper.getName(themeMode),
              )
            ]),
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
                    title: 'Terms of Service',
                    leading: Icon(Icons.description)),
                SettingsTile(
                    title: 'Help and Support', leading: Icon(Icons.support))
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
                iosChevron: null,
              ),
            ])
          ],
        ));
  }
}
