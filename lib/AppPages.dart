import 'package:get/get.dart';
import 'package:jasur_ki/AppRoutes.dart';
import 'package:jasur_ki/pages/home/bindings/binding.dart';
import 'package:jasur_ki/pages/home/views/view.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.BASE,
        page: () => const HomePage(),
        binding: HomeBinding()),
  ];
}
