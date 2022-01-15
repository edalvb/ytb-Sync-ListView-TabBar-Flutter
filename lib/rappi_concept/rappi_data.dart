class RappiCategory {
  const RappiCategory({
    required this.name,
    required this.products,
  });
  final String name;
  final List<RappiProduct> products;
}

class RappiProduct {
  const RappiProduct({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
  final String name;
  final String description;
  final double price;
  final String image;
}

const rappiCategories = [
  RappiCategory(
    name: 'Categoría 1',
    products: [
      RappiProduct(
          name: 'Silim Lights',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 1',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 2',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 3',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
    ],
  ),
  RappiCategory(
    name: 'Categoría 2',
    products: [
      RappiProduct(
          name: 'Silim Lights',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 1',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 2',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 3',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
    ],
  ),
  RappiCategory(
    name: 'Categoría 3',
    products: [
      RappiProduct(
          name: 'Silim Lights',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 1',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 2',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 3',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
    ],
  ),
  RappiCategory(
    name: 'Categoría 4',
    products: [
      RappiProduct(
          name: 'Silim Lights',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 1',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 2',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
      RappiProduct(
          name: 'Silim Lights 3',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
          price: 26.50,
          image: "https://random.imagecdn.app/500/500"),
    ],
  )
];
