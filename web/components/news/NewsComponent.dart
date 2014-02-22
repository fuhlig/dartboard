import '../Panel.dart';
import 'package:angular/angular.dart';

@NgComponent(
    selector: 'news',
    templateUrl: 'components/news/NewsComponent.html',
    cssUrl: 'bower_components/foundation/css/foundation.css',
    publishAs: 'cmp'
)
class NewsComponent implements Panel {

  String title = 'News';
  NewsComponent() {

  }
  void update () => print("Test");

}
