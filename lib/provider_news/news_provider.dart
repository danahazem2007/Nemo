import 'package:flutter/material.dart';

import '../Model_news/news_model.dart';
import '../Service_news/news_service.dart';

class news_provider extends ChangeNotifier{
  news_model?data;

  Future<void> getalldataN()async{
    data= await news_service.getdata();
    notifyListeners();
  }

}