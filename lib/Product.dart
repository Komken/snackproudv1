class Product {
  var stripeId;
  var label;
  double price;
  var icon;
  int quantity;
  var description;

  Product(var stripeId, var label, double price, var icon, int quantity,
      var description) {
    this.stripeId = stripeId;
    this.label = label;
    this.price = price;
    this.icon = icon;
    this.quantity = quantity;
    this.description = description;
  }
}
