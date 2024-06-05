import 'package:get/get.dart';

class Content extends GetxController {
  var title = 'Hello World!'.obs;
  increment() => title.value = 'Hello World!'.toUpperCase();
}