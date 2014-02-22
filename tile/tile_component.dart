library tile;

import 'package:angular/angular.dart';

@NgComponent(
    selector: 'tile',
    templateUrl: 'tile/tile_component.html',
    cssUrl: 'tile/tile_component.css',
    publishAs: 'cmp'
)
class TileComponent {
  @NgAttr('name')
  String name;
}