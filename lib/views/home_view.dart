import 'package:flutter/material.dart';

import 'package:news_application/widgets/category_list_view.dart';

import 'package:news_application/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text(
              'Cloud',
              style: TextStyle(color: Color.fromARGB(255, 202, 182, 3)),
            ),
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: CategoryListView()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewListViewBuilder(q: 'general',),
          ],
        ),
      ),
    );
  }
}
