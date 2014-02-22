/*
* Dartfilght 22.02.2014 @ Bremen
* */
import 'components/Panel.dart';
import 'components/weather/WeatherComponent.dart';
import 'package:angular/angular.dart';

@NgController(
  selector: '[main]',
  publishAs: 'main'
)
class MainController {
  List<Panel> userPanels = [new WeatherComponent(), new WeatherComponent()];  
}

void main (){
  ngBootstrap(module: new Module()
                        ..type(WeatherComponent)
                        ..type(MainController)
  );
}