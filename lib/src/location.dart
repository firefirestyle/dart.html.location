part of firefirestyle.location;

class HtmlLocation extends Location{

  HtmlLocation(): super.fromHref(html.window.location.href){
  }
}
