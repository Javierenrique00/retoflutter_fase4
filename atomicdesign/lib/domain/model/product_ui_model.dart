class ProductUiModel {
  ProductUiModel(
      {required this.id,
      required this.urlImage,
      required this.name,
      required this.price});
  final int id;
  final String urlImage;
  final String name;
  final String price;

  @override
  bool operator ==(Object other) {
    return other is ProductUiModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.urlImage == urlImage &&
        other.name == name &&
        other.price == price;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, urlImage, name, price);
  }
}
