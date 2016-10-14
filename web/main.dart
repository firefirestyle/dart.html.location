import 'package:dart.html.location/location.dart' as loc;
void main() {
  print("hello client");
  var l = new loc.Location();
  print(">>>>> ${l.hash} : ${l.scheme} : ${l.baseAddr} : ${l.values} : ${l.baseAddr}");
}
