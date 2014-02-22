import '../Panel.dart';
import 'package:angular/angular.dart';
import 'dart:html';
import 'dart:convert';

@NgComponent(
    selector: 'weather',
    templateUrl: 'components/weather/weatherComponent.html',
    cssUrl: 'bower_components/foundation/css/foundation.css',
    publishAs: 'cmp'
)
class WeatherComponent implements Panel {

  String title = 'Weather';
  String url = "http://api.openweathermap.org/data/2.5/weather?q=";
  String ort = "Bremen,de";
  var data;
  
  WeatherComponent() {
    
    //this.ort = ort;
    loadData();
  }
  
  void setOrt(String inOrt) {
    ort = inOrt;
  }
  
  void update () => print("Loading method");
  
  void loadData() {
    // call the web server asynchronously
    
    //url = url + ort;
    //print("url" +url);
    print(url + ort);
    var request = HttpRequest.getString(url + ort).then(onDataLoaded);
  }
  
  void onDataLoaded(String responseText) {
    print(responseText);
    data = JSON.decode(responseText);
  }
}
