import '../Panel.dart';
import 'package:angular/angular.dart';

@NgComponent(
    selector: 'weather',
    templateUrl: 'components/weather/weatherComponent.html',
    cssUrl: 'components/weather/weatherComponent.css'
)
class NewsComponent implements Panel {

  String title = 'Wether';
  NewsComponent() {

  }
  void update () => print("Test");

}
