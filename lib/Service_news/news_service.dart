import 'package:dio/dio.dart';
import 'package:newapi/Model_news/news_model.dart';

class news_service{
static Dio dio = Dio();
static Future<news_model> getdata()async{`
  try{
    const url =
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apikey=a410b1724f84452c8df8a810efe34642';
    final responce =  await dio.get(url);
    return news_model.fromjson(responce.data);
  }
  catch
  (e){
    print("$e");
    throw Exception("error feild");
  }
}
}