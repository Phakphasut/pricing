class ClsPricing{
  double douCost = 0.0;
  double douPercentMargin = 0.0;
  double douPrice = 0.0;

  double PricingCost({required double douCost, required double douPercentMargin}) {
    double douPrice = 0.0;

    douPrice = douCost * (1 + douPercentMargin);
    this.douCost = douCost;
    this.douPercentMargin = douPercentMargin;
    this.douPrice = douPrice;

    return douPrice;
  }

  double PricingPrice({required double douCost,required double douPercentMargin}) {
    double douPrice = 0.0;

    douPrice = douCost / (1 - douPercentMargin);
    this.douCost = douCost;
    this.douPercentMargin = douPercentMargin;
    this.douPrice = douPrice;

    return douPrice;
  }

}