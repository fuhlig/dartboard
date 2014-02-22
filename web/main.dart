/*
* Dartfilght 22.02.2014 @ Bremen
* */
import 'components/Panel.dart';
import 'components/weather/WeatherComponent.dart';
import 'components/news/NewsComponent.dart';
import 'components/header/HeaderComponent.dart';
import 'package:angular/angular.dart';

@NgController(
  selector: '[main]',
  publishAs: 'main'
)
class MainController {
}

void main (){
  ngBootstrap(module: new Module()
                        ..type(WeatherComponent)
                        ..type(NewsComponent)
                        ..type(MainController)
                        ..type(HeaderComponent)
  );
}