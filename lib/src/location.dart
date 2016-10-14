part of location;

class Location {
  String _hash = "";
  String _baseAddress = "";
  String _scheme = "";
  String _host = "";
  String _path = "";

  Map<String, String> _values = {};
  Map<String, String> _urlValues = {};
  Map<String, String> _hashValues = {};

  String get scheme => _scheme;
  String get hash => _hash;
  String get host => _host;
  String get path => _path;
  String get withSchemeHostPath => _baseAddress;
  String get baseAddr => "${scheme}://${host}";
  Map<String, String> get values => _values;
  Map<String, String> get urlValues => _urlValues;
  Map<String, String> get hashValues => _hashValues;

  Location() {
    this._hash = html.window.location.hash;
    {
      var addr = html.window.location.href.replaceFirst(new RegExp("[#\?].*"), "");
      this._baseAddress = addr.replaceFirst(new RegExp(r"/[^/]*$"), "/");
    }
    {
      this._scheme = this._baseAddress.replaceFirst(new RegExp(r"://.*$"), "");
    }
    {
      var v= this._baseAddress.replaceFirst(new RegExp(r".*://"), "");
      this._host = v.replaceFirst(new RegExp(r"/.*"), "");
    }
    {
      this._path = this._baseAddress..replaceFirst(new RegExp(r".*/"), "/");
    }
    {
      var prop1 = _hashValues = _prop(html.window.location.hash);
      var prop2 = _urlValues = _prop(html.window.location.href.split("#")[0]);
      for (String key in prop1.keys) {
        _values[key] = prop1[key];
      }
      for (String key in prop2.keys) {
        _values[key] = prop2[key];
      }
    }
  }

  Map<String, String> _prop(String hash) {
    if (hash == null) {
      return {};
    }
    Map<String, String> prop = {};
    if (hash.indexOf("?") > 0) {
      prop = Uri.splitQueryString(hash.substring(hash.indexOf("?") + 1));
    }
    return prop;
  }
}
