import '../Panel.dart';
import 'package:angular/angular.dart';

@NgComponent(
    selector: 'weather',
    templateUrl: 'components/weather/weatherComponent.html',
    cssUrl: 'components/weather/weatherComponent.css',
    publishAs: 'cmp'
)
class WeatherComponent implements Panel {

  String title = 'Weather';
  WeatherComponent() {

  }
  void update () => print("Loading method");

}
