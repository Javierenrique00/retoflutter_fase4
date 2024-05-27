class PdpUiModel {
  /// ### PdpUiModel
  ///
  /// Represent UI elements a Product
  PdpUiModel({required this.id, required this.title, required this.price, required this.description, required this.category, required this.image});

  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;

  @override
  String toString(){
    return 'ProductModel('
    'id: $id, '
    'title: $title, '
    'price: $price, '
    'description: $description, '
    'category: $category, '
    'image: $image'
    ')';
  }
  
  @override
  bool operator ==(Object other) {
    return other is PdpUiModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.image == image &&
        other.title == title &&
        other.price == price &&
        other.description == description &&
        other.category == category;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, image, title, price, description,category);
  }

}