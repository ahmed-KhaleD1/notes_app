import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_botton.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: Column(
        children: [
          CustomTextField(hintText: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'content',
            maxLine: 5,
          ),
          Spacer(),
          CustomButton()
        ],
      ),
    );
  }
}
