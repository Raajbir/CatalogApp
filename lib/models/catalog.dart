class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th gen",
        price: 999,
        color: "#33505a",
        image:
            "https://media1.popsugar-assets.com/files/thumbor/tt8rICQYLd_R6B8YWVQPrVWSd3Y/fit-in/728xorig/filters:format_auto-!!-:strip_icc-!!-/2020/10/20/719/n/46843612/c2f332635f8f0d413eba39.70679882_/i/iphone-12-pacific-blue-color.png")
  ];
}
