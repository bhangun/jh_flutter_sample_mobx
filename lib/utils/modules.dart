import 'package:jh_flutter_mobx/models/module.dart';

class Modules {
   var _pages  = List<Page>();

  addPages(Page newPages){
    _pages.add(newPages);
  }

  List<Page> get pages => _pages;
}
