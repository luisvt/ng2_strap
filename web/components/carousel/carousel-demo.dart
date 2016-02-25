import "package:angular2/angular2.dart";
import "package:ng2_strap/carousel/carousel.dart";
import 'package:node_shims/js.dart';

@Component(selector: "carousel-demo",
    templateUrl: "carousel-demo.html",
    directives: const [CAROUSEL_DIRECTIVES, CORE_DIRECTIVES, FORM_DIRECTIVES])
class CarouselDemo {
  num myIntervalInSeconds = 1;
  num get myIntervalInMs => myIntervalInSeconds * 1000;
  bool noWrapSlides = false;
  List slides = [];
  CarouselDemo() {
    for (var i = 0; i < 4; i++) {
      addSlide();
    }
  }

  addSlide() {
    var newWidth = 600 + slides.length + 1;
    slides.add({
        'image': '''//placekitten.com/${newWidth}/300''',
        'text': '''
${[ "More" , "Extra" , "Lots of" , "Surplus"][slides.length % 4]}
${["Cats" , "Kittys" , "Felines" , "Cutes"] [ slides.length % 4]}'''
    });
  }

  removeSlide(index) {
    splice(slides, index, 1);
  }
}
