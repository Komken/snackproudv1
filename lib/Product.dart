class Product {
  var stripeId;
  var brand;
  var label;
  var flavour;
  double price;
  var icon;
  int quantity;
  var description;

  Product(var stripeId, var brand, var label, var flavour, double price,
      var icon, int quantity, var description) {
    this.stripeId = stripeId;
    this.brand = brand;
    this.label = label;
    this.flavour = flavour;
    this.price = price;
    this.icon = icon;
    this.quantity = quantity;
    this.description = description;
  }
}
