import 'package:test/test.dart' as unit;
import 'package:firefirestyle.location/location.dart' as loc;

void main() {
  unit.test("basic a", () {
    var lo = new loc.Location.fromHref("scheme://host/path?qa=a#hash?qh=b");
    unit.expect("scheme://host/path?qa=a#hash?qh=b",lo.href);
    unit.expect("#hash?qh=b",lo.hash);
    unit.expect("#hash",lo.hashPath);
    print(lo.hash);
  });
//file:///android_asset/www/index.html#/Me
unit.test("basic b", () {
  var lo = new loc.Location.fromHref("file:///android_asset/www/index.html#/Me");
  unit.expect("file",lo.scheme);
  unit.expect("file://",lo.baseAddr);
  unit.expect("",lo.host);
  unit.expect("#/Me",lo.hash);
  unit.expect("/android_asset/www/index.html",lo.path);
  unit.expect("file:///android_asset/www/index.html",lo.baseAddrWithPath);
//  unit.expect("file",lo.scheme);
//  unit.expect("#hash?qh=b",lo.hash);
//  unit.expect("#hash",lo.hashPath);
  print(lo.hash);
});
}
