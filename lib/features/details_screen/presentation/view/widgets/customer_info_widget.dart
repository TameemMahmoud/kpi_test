import 'package:flutter/material.dart';

import '../../../../../common_widgets/info_line_widget.dart';

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoLineWidget(
          text: 'CUSTOMER',
          value: Text('AB&l Holdings'),
        ),
        InfoLineWidget(
          text: 'ADDRESS',
          value: Text('United States'),
        ),
        InfoLineWidget(
          text: 'PHONE NUMBER',
          value: Text('9168317299'),
        ),
      ],
    );
  }
}
