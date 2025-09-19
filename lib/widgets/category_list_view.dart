import 'package:flutter/material.dart';
import 'package:news_application/models/category_model.dart';
import 'package:news_application/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categoryList = const [
    CategoryModel(
      image: 'assets/sports.avif',
      title: 'Sports',
    ),
    CategoryModel(
      image: 'assets/business.avif',
      title: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      title: 'Entertaiment',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      title: 'Genaral',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      title: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      title: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      title: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) =>
            CategoryCard(category: categoryList[index]),
      ),
    );
  }
}
