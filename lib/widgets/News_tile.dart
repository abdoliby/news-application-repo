import 'package:flutter/material.dart';
import 'package:news_application/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  lunchNews () async {
              if (await canLaunchUrl(Uri.parse(articleModel.url))) {
                await launchUrl(Uri.parse(articleModel.url));
              } else {
                throw 'Could not launch the link right now';
              }
            }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: articleModel.url.isNotEmpty? lunchNews :() => 
      const Text('The link is not available, try again later'),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
              articleModel.image ??
                  'https://th.bing.com/th/id/R.11553df48cc95bf0e06031ed18c1f349?rik=ouncbQZ%2bG7Ar6g&pid=ImgRaw&r=0',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
            articleModel.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
