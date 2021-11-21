enum ThemeState { systemsDefault, lightMode, darkMode }

class ThemeHelper {
  static String getName(ThemeState mode) {
    switch (mode) {
      case ThemeState.systemsDefault:
        return "System Default";
      case ThemeState.lightMode:
        return "Light";
      case ThemeState.darkMode:
        return "Dark";
      default:
        return "";
    }
  }
}
