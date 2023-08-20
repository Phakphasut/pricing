import 'package:pricing/clsGetValue0111.dart';
import 'package:pricing/clsHF0111.dart';
import 'package:pricing/pricing0100.dart';
import 'package:intl/intl.dart';

void main(List<String> arguments) {
  var objGetDouble = ClsGetValue();
  var objGetChoice = ClsGetValue();
  var objHF = ClsHF();
  var objDou2 = NumberFormat("#,##0.00");
  var objPricing = ClsPricing();

  String strCalType = "";
  double douCost = 0.0;
  double douPercentMargin = 0.0;
  double douPrice = 0.0;

  objHF.setHeader(
    strProg: "Pricing", 
    strVersion: "1.0.0", 
    strDate: "660820", 
    strTime: "0000", 
    strID: "64345770", 
    strDev: "Phakphasut");
  
  douCost = objGetDouble.getDouble(
    strValueName: "Cost", 
    douMin: 0.0, 
    douMax: 1000000.0,
    strUnit: "THB",
    intTabs: 1);

  douPercentMargin = objGetDouble.getDouble(
    strValueName: "Margin", 
    douMin: 0.0, 
    douMax: 100.0,
    strUnit: "%",
    intTabs: 2) / 100;

  strCalType = objGetChoice.getChoice2(
    strValueName: "Pricing Type", 
    strChoice1Text: "C", 
    strChoice1Name: "Based on Cost", 
    strChoice2Text: "P", 
    strChoice2Name: "Based on Price",
    intTabs: 2);

  switch (strCalType) {
    case "C":
      douPrice = objPricing.PricingCost(
        douCost: douCost, douPercentMargin: douPercentMargin);
      break;
    case "P":
      douPrice = objPricing.PricingPrice(
        douCost: douCost, douPercentMargin: douPercentMargin);
      break;
    default:
      douPrice = objPricing.PricingCost(
        douCost: douCost, douPercentMargin: douPercentMargin);
  }

  print("Price (THB) \t\t\t= ${objDou2.format(douPrice)}");

  objHF.setFooter();
}
