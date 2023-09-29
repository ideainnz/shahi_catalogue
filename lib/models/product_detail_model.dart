class ProductDetail {
  int _productDetailId;
  int _productId;
  String _productDescription;
  String _ingredients;
  String _ingredientsFrench;
  String _ingredientsArabic;
  String _nutritionFactsImagePath;

  ProductDetail(
      this._productDetailId,
      this._productId,
      this._productDescription,
      this._ingredients,
      this._ingredientsFrench,
      this._ingredientsArabic,
      this._nutritionFactsImagePath);

  int get productDetailId => _productDetailId;

  int get productId => _productId;

  String get productDescription => _productDescription;

  String get ingredients => _ingredients;

  String get nutritionFactsImagePath => _nutritionFactsImagePath;

  String get ingredientsArabic => _ingredientsArabic;

  String get ingredientsFrench => _ingredientsFrench;
}
