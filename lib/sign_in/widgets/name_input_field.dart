import 'package:flutter/material.dart';
import 'package:matrix_ui/matrix_ui.dart';

class NameInputField extends StatelessWidget {
  const NameInputField({
    final Key? key,
    required final TextEditingController namePasswordController,
  })  : _namePasswordController = namePasswordController,
        super(key: key);

  final TextEditingController _namePasswordController;

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      controller: _namePasswordController,
      decoration: InputDecoration(
        hintText: 'Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (final value) => value.isValidName,
    );
  }
}
