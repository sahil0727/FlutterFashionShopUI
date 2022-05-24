class Category {
  final String title, icon;
  Category({
    required this.icon,
    required this.title,
  });
}

List<Category> demo_Category = [
  Category(icon: 'assets/icons/dress.svg', title: 'Dress'),
  Category(icon: 'assets/icons/shirt.svg', title: 'Shirt'),
  Category(icon: 'assets/icons/pants.svg', title: 'Pants'),
  Category(icon: 'assets/icons/Tshirt.svg', title: 'T-Shirt'),
];
