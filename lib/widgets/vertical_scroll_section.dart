import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../../../constant/colors.dart';
import '../../../providers/vertical_items.dart';

class VerticalScrollSection extends StatelessWidget {
  const VerticalScrollSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<VerticalItemsProvider>(
      builder: (context, verticalValueProvider, child) {
        return Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Section 2 (${verticalValueProvider.itemsCount})',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: ProjectColor.black,
                    ),
                  ),
                ),
              ],
            ),
            ...List.generate(
              verticalValueProvider.itemsCount,
              (index) => Container(
                // padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                width: 382,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ProjectColor.white,
                  boxShadow: const [
                    BoxShadow(
                      color: ProjectColor.grey,
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    verticalValueProvider.generateItemAt(index),
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: ProjectColor.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
