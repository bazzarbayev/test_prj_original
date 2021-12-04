import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:gap/gap.dart';

import '../../constant/colors.dart';
import '../widgets/custom_close_button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _scrollController = ScrollController(initialScrollOffset: 50.0);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: height,
        color: ProjectColor.grey,
        child: Column(
          children: [
            const Spacer(flex: 1),
            Container(
              child: Stack(
                children: [
                  const CustomCloseButton(),
                  Column(
                    children: [
                      const Gap(16),
                      const Text(
                        'Title',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ProjectColor.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          lorem(words: 15, paragraphs: 1),
                          style: const TextStyle(
                            fontSize: 14,
                            color: ProjectColor.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: ProjectColor.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: height < 534 ? 300 : 400),
              child: Container(
                color: ProjectColor.lightGrey,
                child: Scrollbar(
                  controller: _scrollController,
                  isAlwaysShown: true,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: List.generate(
                        3,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              lorem(words: 100, paragraphs: 1),
                              style: const TextStyle(
                                fontSize: 14,
                                color: ProjectColor.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 76,
              width: double.infinity,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ProjectColor.grey,
                    offset: Offset(0.0, -1.0),
                    blurRadius: 2.0,
                  ),
                ],
                color: ProjectColor.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      color: ProjectColor.fuchia,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'TEST BUTTON',
                        style: TextStyle(
                          letterSpacing: 1.2,
                          fontSize: 14,
                          color: ProjectColor.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
