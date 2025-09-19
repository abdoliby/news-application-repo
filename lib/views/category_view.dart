import 'package:flutter/material.dart';
import 'package:news_application/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.q});
  final String q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewListViewBuilder(
              q: q,
            ),
          ],
        ),
      ),
    );
  }
}
