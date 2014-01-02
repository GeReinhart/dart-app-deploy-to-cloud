


class BlogLink {
  
  String blogDomain;
  String article;
  
  BlogLink(this.blogDomain,this.article);
  
  String get link => "http://${blogDomain}/${article}";
   
  
}

