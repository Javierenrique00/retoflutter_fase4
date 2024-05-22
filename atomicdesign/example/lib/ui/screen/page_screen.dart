import 'package:atomicdesign/domain/model/product_ui_model.dart';
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

    final product1 = ProductUiModel(id: 1, urlImage:'https://picsum.photos/id/292/200/200', name: 'Cebolla roja', price: '2.850');
    final product2 = ProductUiModel(id: 2, urlImage:'https://picsum.photos/id/312/200/200', name: 'Miel del campo', price: '25.000');
    final product3 = ProductUiModel(id: 1, urlImage:'https://picsum.photos/id/300/200/200', name: 'Cebolla roja', price: '2.850');
    final product4 = ProductUiModel(id: 2, urlImage:'https://picsum.photos/id/123/200/200', name: 'Miel del campo', price: '25.000');

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
          'ListProductPage': ListProductPage(products: [product1,product2,product3,product4], shrinkWrap: true, onClick: (int id) {  },)
        },
      ],
    );
  }
}