class Product {
  var stripeId;
  var label;
  double price;
  var icon;
  int quantity;

  Product(var stripeId, var label, double price, var icon, int quantity) {
    this.stripeId = stripeId;
    this.label = label;
    this.price = price;
    this.icon = icon;
    this.quantity = quantity;
  }
}
