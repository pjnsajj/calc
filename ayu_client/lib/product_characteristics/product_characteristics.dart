List<String> productName = <String>['Наименование товара'];
int productPrice = 200;
int productStock = 30;
//String productName = 'товар';
int productQuantity = 4;
List<String> list = <String>[
  'Показать все',
  'Показать выбранные товары',
  'Показать товары в наличии'
];
List<String> quantity = <String>['шт.', 'уп.'];
String dropdownValue = list.first;
String dropdownQuantity = quantity.first;
List<bool> selected =
    List<bool>.generate(productQuantity, (int index) => false);
String productNameValue = productName.toString();
