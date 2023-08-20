import "dart:io";

class ClsGetValue {
  String getString(
      {required String strValueName,
      required int intMin,
      required int intMax,
      int? intTabs,
      String? strDetails}) {
    String strValue = "";
    String strTabs = "";

    if (intTabs != null && intTabs > 0) {
      for (var i = 0; i < intTabs; i++) {
        strTabs = "$strTabs\t";
      }
    }

    if (strDetails != null) {
      strDetails = "\n" "$strDetails";
    } else {
      strDetails = "";
    }

    do {
      stdout.write(
          "$strValueName ($intMin-$intMax letters) $strDetails$strTabs: ");
      strValue = stdin.readLineSync().toString();
    } while (strValue.length < intMin ||
        strValue.length > intMax ||
        num.tryParse(strValue) != null);

    return strValue;
  }

  String getChoice2(
      {required String strValueName,
      required String strChoice1Text,
      required String strChoice1Name,
      required String strChoice2Text,
      required String strChoice2Name,
      int? intTabs,
      String? strDetails}) {
    String strValue = "";
    String strTabs = "";

    if (intTabs != null && intTabs > 0) {
      for (var i = 0; i < intTabs; i++) {
        strTabs = "$strTabs\t";
      }
    }

    if (strDetails != null) {
      strDetails = "\n" "$strDetails";
    } else {
      strDetails = "";
    }

    do {
      stdout.write(
          "$strValueName (case insensitive) $strDetails\n\t$strChoice1Text) $strChoice1Name\n\t$strChoice2Text) $strChoice2Name\nselected choice $strTabs: ");
      strValue = stdin.readLineSync().toString();
    } while (strValue != strChoice1Text.toUpperCase() &&
        strValue != strChoice1Text.toLowerCase() &&
        strValue != strChoice2Text.toUpperCase() &&
        strValue != strChoice2Text.toLowerCase());
    strValue = strValue.toUpperCase();

    return strValue;
  }

  String getChoice3(
      {required String strValueName,
      required String strChoice1Text,
      required String strChoice1Name,
      required String strChoice2Text,
      required String strChoice2Name,
      required String strChoice3Text,
      required String strChoice3Name,
      int? intTabs,
      String? strDetails}) {
    String strValue = "";
    String strTabs = "";

    if (intTabs != null && intTabs > 0) {
      for (var i = 0; i < intTabs; i++) {
        strTabs = "$strTabs\t";
      }
    }

    if (strDetails != null) {
      strDetails = "\n" "$strDetails";
    } else {
      strDetails = "";
    }

    do {
      stdout.write(
          "$strValueName (case insensitive) $strDetails\n\t$strChoice1Text) $strChoice1Name\n\t$strChoice2Text) $strChoice2Name\n\t$strChoice3Text) $strChoice3Name\nselected choice $strTabs: ");
      strValue = stdin.readLineSync().toString();
    } while (strValue != strChoice1Text.toUpperCase() &&
        strValue != strChoice1Text.toLowerCase() &&
        strValue != strChoice2Text.toUpperCase() &&
        strValue != strChoice2Text.toLowerCase() &&
        strValue != strChoice3Text.toUpperCase() &&
        strValue != strChoice3Text.toLowerCase());
    strValue = strValue.toUpperCase();

    return strValue;
  }

  String getChoice4(
      {required String strValueName,
      required String strChoice1Text,
      required String strChoice1Name,
      required String strChoice2Text,
      required String strChoice2Name,
      required String strChoice3Text,
      required String strChoice3Name,
      required String strChoice4Text,
      required String strChoice4Name,
      int? intTabs,
      String? strDetails}) {
    String strValue = "";
    String strTabs = "";

    if (intTabs != null && intTabs > 0) {
      for (var i = 0; i < intTabs; i++) {
        strTabs = "$strTabs\t";
      }
    }

    if (strDetails != null) {
      strDetails = "\n" "$strDetails";
    } else {
      strDetails = "";
    }

    do {
      stdout.write(
          "$strValueName (case insensitive) $strDetails\n\t$strChoice1Text) $strChoice1Name\n\t$strChoice2Text) $strChoice2Name\n\t$strChoice3Text) $strChoice3Name\n\t$strChoice4Text) $strChoice4Name\nselected choice $strTabs: ");
      strValue = stdin.readLineSync().toString();
    } while (strValue != strChoice1Text.toUpperCase() &&
        strValue != strChoice1Text.toLowerCase() &&
        strValue != strChoice2Text.toUpperCase() &&
        strValue != strChoice2Text.toLowerCase() &&
        strValue != strChoice3Text.toUpperCase() &&
        strValue != strChoice3Text.toLowerCase() &&
        strValue != strChoice4Text.toUpperCase() &&
        strValue != strChoice4Text.toLowerCase());
    strValue = strValue.toUpperCase();

    return strValue;
  }

  int getInt(
      {required String strValueName,
      required int intMin,
      required int intMax,
      String? strUnit,
      int? intTabs,
      String? strDetails}) {
    String strValue = "";
    int intValue = 0;
    String strTabs = "";

    if (intTabs != null && intTabs > 0) {
      for (var i = 0; i < intTabs; i++) {
        strTabs = "$strTabs\t";
      }
    }

    if (strDetails != null) {
      strDetails = "\n" "$strDetails";
    } else {
      strDetails = "";
    }

    do {
      if (strUnit != null) {
        stdout.write(
            "$strValueName ($intMin-$intMax $strUnit) $strDetails$strTabs: ");
      } else {
        stdout.write("$strValueName ($intMin-$intMax) $strDetails$strTabs: ");
      }
      strValue = stdin.readLineSync().toString();
      if (strValue == "" || int.tryParse(strValue) == null) {
        intValue = intMin - 1; //force to mismatch while condition
      } else {
        intValue = int.parse(strValue);
      }
    } while (intValue < intMin || intValue > intMax);

    return intValue;
  }

  double getDouble(
      {required String strValueName,
      required double douMin,
      required double douMax,
      String? strUnit,
      int? intTabs,
      String? strDetails}) {
    String strValue = "";
    double douValue = 0.0;
    String strTabs = "";

    if (intTabs != null && intTabs > 0) {
      for (var i = 0; i < intTabs; i++) {
        strTabs = "$strTabs\t";
      }
    }

    if (strDetails != null) {
      strDetails = "\n" "$strDetails";
    } else {
      strDetails = "";
    }

    do {
      if (strUnit != null) {
        stdout.write(
            "$strValueName ($douMin-$douMax $strUnit) $strDetails$strTabs: ");
      } else {
        stdout.write("$strValueName ($douMin-$douMax) $strDetails$strTabs: ");
      }
      strValue = stdin.readLineSync().toString();
      if (strValue == "" || double.tryParse(strValue) == null) {
        douValue = douMin - 1.0; //force to mismatch while condition
      } else {
        douValue = double.parse(strValue);
      }
    } while (douValue < douMin || douValue > douMax);

    return douValue;
  }

  String getVersion() {
    return "v.1.1.0 651215 1608";
  }

  String getAbout() {
    String strAbout = "";
    strAbout =
        "method getString(String strValueName, int intMin, int intMax, int? intTabs, String? strDetails}) to get string\n";
    strAbout =
        "method getChoice2(String strValueName, String strChoice1Text, String strChoice1Name, String strChoice2Text, String strChoice2Name, int? intTabs, String? strDetails}) to get only 1 choice from total 2 choices\n";
    strAbout =
        "method getChoice3(String strValueName, String strChoice1Text, String strChoice1Name, String strChoice2Text, String strChoice2Name, String strChoice3Text, String strChoice3Name, int? intTabs, String? strDetails}) to get only 1 choice from total 3 choices\n";
    strAbout =
        "method getChoice3(String strValueName, String strChoice1Text, String strChoice1Name, String strChoice2Text, String strChoice2Name, String strChoice3Text, String strChoice3Name, String strChoice4Text, String strChoice4Name, int? intTabs, String? strDetails}) to get only 1 choice from total 4 choices\n";
    strAbout =
        "${strAbout}method getInt(String strValueName, int intMin, int intMax, String? strUnit, int? intTabs, String? strDetails)"
        "\n";
    strAbout =
        "${strAbout}method getDouble(String strValueName, double douMin, double douMax, String? strUnit, int? intTabs, String? strDetails})"
        "\n";
    strAbout =
        "${strAbout}method getVersion() to return version, build date, and build time"
        "\n";
    strAbout = "${strAbout}method getAbout() to return using details";
    return strAbout;
  }
}
