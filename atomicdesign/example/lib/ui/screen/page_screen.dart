import 'package:atomicdesign/ui/page/home_page.dart';
import 'package:atomicdesign/ui/page/initial_page.dart';
import 'package:atomicdesign/ui/page/list_product_page.dart';
import 'package:atomicdesign/ui/page/loading_page.dart';
import 'package:atomicdesign/ui/page/login_page.dart';
import 'package:atomicdesign/ui/page/register_page.dart';
import 'package:atomicdesign/ui/page/try_again_page.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowcaseTemplate(
      widgetList: [
        const {
          'LoginPage': LoginPage()
        },
        const {
          'InitialPage': InitalPage()
        },
        const {
          'HomePage': HomePage()
        },
        const {
          'LoadingPage': LoadingPage()
        },
        {
          'RegisterPage': Registerpage(register: (String firstName, String lastName, String email, String pwd) {  },)
        },
        {
          'TryAgainPage': TryAgainPage(onPressed: () {  },)
        },
        {
          'ListProductPage': ListProductPage(products: const [], shrinkWrap: true, onClick: (int id) {  },)
        },
      ],
    );
  }
}