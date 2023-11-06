
class KHelperFunctions {
  //Calculate Price Bases on Tax and Shiping
  static double calculateTotalPrice(double productrPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productrPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productrPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate Shipping Cost
  static calculateShppingCOst(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // --Tax Rate
  static double getTaxRateForLocation(String location) {
    // Loockup tax rate for given location in API
    // Return the appropriate tax rate
    return 0.10;
  }

  // -- Shipping cost
  static double getShippingCost(String location) {
    // Lookup from api
    // Calculate the shipping cost based on various factors like distance, weight etc
    return 5.00;
  }

  // -- Sum all the cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
