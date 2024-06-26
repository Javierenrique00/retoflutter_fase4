
import 'package:example/ui/modules/atoms/atoms_screen.dart';
import 'package:example/ui/modules/atoms/buttons_screen.dart';
import 'package:example/ui/modules/atoms/edit_text_field_screen.dart';
import 'package:example/ui/modules/atoms/other_atoms_screen.dart';
import 'package:example/ui/modules/atoms/resources_screen.dart';
import 'package:example/ui/modules/home_screen.dart';
import 'package:example/ui/modules/molecules/molecules_screen.dart';
import 'package:example/ui/modules/molecules/other_molecules_screen.dart';
import 'package:example/ui/modules/molecules/product_molecule_screen.dart';
import 'package:example/ui/modules/molecules/shopping_cart_screen.dart';
import 'package:example/ui/modules/organisms/big_promotion_list_organism_screen.dart';
import 'package:example/ui/modules/organisms/cart_list_organism_screen.dart';
import 'package:example/ui/modules/organisms/detail_organism_screen.dart';
import 'package:example/ui/modules/organisms/list_category_organism_screen.dart';
import 'package:example/ui/modules/organisms/list_product_organism_screen.dart';
import 'package:example/ui/modules/organisms/login_organism_screen.dart';
import 'package:example/ui/modules/organisms/organism_screen.dart';
import 'package:example/ui/modules/organisms/promotion_list_organism_screen.dart';
import 'package:example/ui/modules/organisms/register_organism_screen.dart';
import 'package:example/ui/modules/pages/cart_page_screen.dart';
import 'package:example/ui/modules/pages/help_pag_screen.dart';
import 'package:example/ui/modules/pages/initial_page_screen.dart';
import 'package:example/ui/modules/pages/list_product_page_screen.dart';
import 'package:example/ui/modules/pages/loading_page_screen.dart';
import 'package:example/ui/modules/pages/lobby_page_screen.dart';
import 'package:example/ui/modules/pages/pages_screen.dart';
import 'package:example/ui/modules/pages/pdp_page_screen.dart';
import 'package:example/ui/modules/pages/register_page_screen.dart';
import 'package:example/ui/modules/pages/search_page_screen.dart';
import 'package:example/ui/modules/pages/try_again_page_screen.dart';
import 'package:example/ui/modules/template/app_wbar_template_screen.dart';
import 'package:example/ui/modules/template/template_screen.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';



Map<String, Widget Function(BuildContext)> get appRoutes {
        return {
          Navigation.homeScreen : (context) =>  const HomeScreen(),

          Navigation.atomsScreen :(context) => const AtomsScreen(),
          Navigation.buttonsScreen :(context) => const ButtonsScreen(),
          Navigation.editTextFieldScreen :(context) => const EditTextFieldScreen(),
          Navigation.otherAtomsScreen :(context) => const OtherAtomsScreen(),
          Navigation.resourcesScreen :(context) => const ResourcesScreen(),

          Navigation.moleculeScreen :(context) => const MoleculesScreen(),
          Navigation.productMoleculeScreen :(context) => const ProductMoleculeScreen(),
          Navigation.cartCounterMoleculeScreen :(context) => const ShoppingCartScreen(),
          Navigation.otherMoleculesScreen :(context) => const OtherMoleculesScreen(),

          Navigation.organismsScreen :(context) => const OrganismScreen(),
          Navigation.listCategoryOrganismScreen :(context) => const ListCategoryOrganismScreen(),
          Navigation.listProductOrganismScreen :(context) => const ListProductsOrganismScreen(),
          Navigation.registerOrganismScreen :(context) => const RegisterOrganismScreen(),
          Navigation.loginOrganismScreen:(context) => const LoginOrganismScreen(),
          Navigation.detailOrganismScreen:(context) => const DetailOrganismScreen(),
          Navigation.cartListOrganismScreen:(context) => const CartListOrganismScreen(),
          Navigation.promotionListOrganismScreen:(context) => const PromotionListOrganismScreen(),
          Navigation.bigPromotionListOrganismScreen:(context) => const BigPromotionListOrganismScreen(),

          Navigation.templatesScreen :(context) => const TemplateScreen(),
          Navigation.appWbarTemplateScreen :(context) => const AppWbarTemplateScreen(),
          
          Navigation.pagesScreen:(context) => const PagesScreen(),
          Navigation.initialPageScreen:(context) => const InitialPageScreen(),
          Navigation.listProductPageScreen:(context) => const ListProductPageScreen(),
          Navigation.registerPageScreen:(context) => const RegisterPageScreen(),
          Navigation.tryAgainPageScreen:(context) => const TryAgainPageScreen(),
          Navigation.loadingPageScreen:(context) => const LoadingPageScreen(),
          Navigation.pdpPageScreen:(context) => const PdpPageScreen(),
          Navigation.cartPageScreen:(context) => const CartPageScreen(),
          Navigation.searchPageScreen:(context) => const SearchPageScreen(),
          Navigation.lobbyPageScreen:(context) => const LobbyPageScreen(),
          Navigation.helpPageScreen:(context) => const HelpPageScreen(),

        };
      }
      