import 'package:firefirestyle.location/location.dart' as loc;
import 'package:firefirestyle.location/location_html.dart' as loc;

void main() {
  print("hello client");
  var l = new loc.HtmlLocation();
  print(">>>>> ${l.hash} : ${l.scheme} : ${l.baseAddr} : ${l.values} : ${l.baseAddr}");
  //

}
