import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapi/Screens/item.dart';
import 'package:provider/provider.dart';

import '../provider_news/news_provider.dart';

class home_news extends StatelessWidget {
  const home_news({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("              News",style: TextStyle(color: Colors.red,fontSize: 45),),
       ),
      body: Consumer<news_provider>(builder: (context, pro, child) {
        var dataVar = pro.data;
        if (dataVar == null) {
          pro.getalldataN();
          return Center(child: CircularProgressIndicator());
        }
        else {
          return ListView.separated(
              itemBuilder: (context, index) =>
                  Item(
                    image: dataVar.news[index]["urlToImage"],
                    title: dataVar.news[index]["title"],
                    descrption: dataVar.news[index]["description"],
                  ),
              separatorBuilder: (context, index) => const SizedBox(height: 35,),
              itemCount: dataVar.news.length
          );
        }
      }
      ),
    );
  }
}
