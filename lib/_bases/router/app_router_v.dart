import 'package:get/get.dart';
import 'package:stappowner/views/pages/home/home_page.dart';

final Map<String, GetRoute> routes = {
  '/home': GetRoute(page: HomePage(), transition: Transition.fade),
};