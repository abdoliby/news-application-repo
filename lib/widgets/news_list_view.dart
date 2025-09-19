import 'package:flutter/material.dart';
import 'package:news_application/models/article_model.dart';
import 'package:news_application/widgets/News_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articleList});
  final List<ArticleModel> articleList;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articleList.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: NewsTile(
            articleModel: articleList[index],
          ),
        ),
      ),
    );
  }
}
