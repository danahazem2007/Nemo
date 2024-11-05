import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider_news/news_provider.dart';

class Item extends StatelessWidget {
   String image;
   String title;
   String descrption;
   Item({required this.image,required this.title,required this.descrption});
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<news_provider>(context);
    return  Container(
      child: Column(
        children: [
           Image.network(image),
          SizedBox(height: 50,),
          Text(title),
          SizedBox(height: 50,),
          Text(descrption),
        ],
      ),
    );
  }
}
