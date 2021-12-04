import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: SvgPicture.asset('assets/icons/close_icon.svg'),
      ),
    );
  }
}
