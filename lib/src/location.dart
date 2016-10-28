part of firefirestyle.location.html;

class HtmlLocation extends Location{

  HtmlLocation(): super.fromHref(html.window.location.href){
  }
}
