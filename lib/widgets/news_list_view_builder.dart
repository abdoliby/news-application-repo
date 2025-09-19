import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/models/article_model.dart';
import 'package:news_application/services/news_service.dart';
import 'package:news_application/widgets/news_list_view.dart';

class NewListViewBuilder extends StatefulWidget {
  NewListViewBuilder({super.key, required this.q});
  final String q;
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(q: widget.q);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articleList: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(child: Text("Error"));
        } else {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 230),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
