import 'package:flutter/widgets.dart';
import 'package:test_prj/widgets/horizontal_scroll_section.dart';
import 'package:test_prj/widgets/vertical_scroll_section.dart';

import '../../constant/colors.dart';
import '../widgets/custom_close_button.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: height,
            color: ProjectColor.white,
            child: SafeArea(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.10,
                          width: double.infinity,
                        ),
                        const HorizontalScrollSection(),
                        const VerticalScrollSection(),
                      ],
                    ),
                  ),
                  const CustomCloseButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
