import "dart:html";

void main() {
  String blogUrl = querySelector("#btn-to-blog").attributes["data-link"] ;
  querySelector("#btn-to-blog").onClick.listen((e) {
    window.location.href = blogUrl;
  });
}
