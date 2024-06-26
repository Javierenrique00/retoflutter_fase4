import 'package:atomicdesign/ui/page/help_page.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class HelpPageScreen extends StatelessWidget {
  const HelpPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(
        title: 'HelpPage',
        widget: HelpPage(
          helpTitle: 'HelpTitle',
          helpMsg: """ Lorem ipsum dolor sit amet, consectetur
  adipiscing elit, sed do eiusmod tempor incididunt ut
  labore et dolore magna aliqua. Ut enim ad minim veniam
  , quis nostrud exercitation ullamco laboris nisi ut aliquip 
  ex ea commodo consequat. Duis aute irure dolor in reprehenderit
  in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
  Excepteur sint occaecat cupidatat non proident, sunt in culpa 
  qui officia deserunt mollit anim id est laborum.
  """,
          contactTitle: 'ContactTitle',
          contactMsg: """ Lorem ipsum dolor sit amet, consectetur
  adipiscing elit, sed do eiusmod tempor incididunt ut
  labore et dolore magna aliqua. Ut enim ad minim veniam
  , quis nostrud exercitation ullamco laboris nisi ut aliquip 
  ex ea commodo consequat. Duis aute irure dolor in reprehenderit
  in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
  Excepteur sint occaecat cupidatat non proident, sunt in culpa 
  qui officia deserunt mollit anim id est laborum.
  """,
        ));
  }
}
