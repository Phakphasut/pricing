class ClsHF {
  String strProg = "NoProgramName";
  String strVersion = "1.1.1";
  String strDate = "650101";
  String strTime = "0000";
  String strID = "NoID";
  String strDev = "NoDevName";

  void setHeader({required String strProg, required String strVersion, required String strDate, required String strTime, required String strID, required String strDev}){
    String strHeader = "";
    this.strProg = strProg;
    this.strVersion = strVersion;
    this.strDate = strDate;
    this.strTime = strTime;
    this.strDev = strDev;

    strHeader = "----------------------------------------------------\n";
    strHeader ="$strHeader$strProg $strVersion $strDate $strTime""\n";
    strHeader ="$strHeader""developed by $strID $strDev""\n";
    strHeader = "$strHeader----------------------------------------------------";

    print(strHeader);
  }

  void setFooter(){
    print("------------------ End of program ------------------");
  }

  String getVersion(){
    return "v.1.0.0 660804 0800";
  }

  String getAbout(){
    String strAbout = "";
    strAbout = "method setHeader(string program_name, string version, string build_date, string build_time, string dev_name) to build header\n";
    strAbout = "${strAbout}method setFooter() to build footer""\n";
    strAbout = "${strAbout}method getVersion() to return version, build date, and build time""\n";
    strAbout = "${strAbout}method getAbout() to return using details";
    return strAbout;
  }
}