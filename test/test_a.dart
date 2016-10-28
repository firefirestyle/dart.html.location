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

}
