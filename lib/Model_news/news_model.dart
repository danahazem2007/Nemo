class news_model{
  List<dynamic> news;
  news_model ({required this.news});
factory news_model.fromjson(Map<String,dynamic>json){
  List<dynamic> fulldata=[];
fulldata=fulldata.map(
    (newsall){
      return
        {
        "image":newsall["urlToImage"],
        "title":newsall["title"],
        "descraption":newsall["description"],
      };
    }
).toList();

  return news_model(news: fulldata);
}
}