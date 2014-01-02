import 'package:unittest/unittest.dart';
import '../lib/model.dart';

main() {
  
  test('blog link', () {
    expect(new BlogLink("gereinhartasdartisan.blogspot.com","dart-automatic-deployement-in-the-cloud").link,
        equals("http://gereinhartasdartisan.blogspot.com/dart-automatic-deployement-in-the-cloud")); 
  });
  
}