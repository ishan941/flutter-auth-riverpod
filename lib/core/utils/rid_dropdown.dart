import 'package:flutter/material.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';

class RidDropdown extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final void Function(String?)? onChanged;
  final String? value;

  const RidDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uniqueItems = items.toSet().toList();
    final isValueInItems = uniqueItems.contains(value);

    return DropdownButtonFormField<String>(
      value: isValueInItems ? value : null,
      hint: Text(
        hintText,
        style: Theme.of(context)
            .textTheme
            .subheadingRegular
            ?.copyWith(color: grey300),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: NefSpacing.spacing4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NefSpacing.spacing2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NefSpacing.spacing2),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NefSpacing.spacing2),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NefSpacing.spacing2),
          borderSide: BorderSide(color: errorColor),
        ),
      ),
      isExpanded: true,
      onChanged: onChanged,
      items: uniqueItems.map<DropdownMenuItem<String>>((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: Theme.of(context).textTheme.subheadingRegular,
          ),
        );
      }).toList(),
    );
  }
}

class NefDropdownGenderField extends StatelessWidget {
  final String hintText;
  final void Function(String?)? onChanged;
  final String? value;

  const NefDropdownGenderField({
    Key? key,
    required this.hintText,
    this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Gender options
    final List<String> genderOptions = ['Male', 'Female', 'Other'];

    // Ensure that the value is valid and exists in the options list
    final bool isValueInItems = genderOptions.contains(value);

    return Container(
      height: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(NefRadius.radius2),
        border: Border.all(
          color: greyColor,
          width: 1.0,
        ),
      ),
      child: NefPadding(
        padding: EdgeInsets.symmetric(horizontal: NefSpacing.spacing4),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            key: ValueKey(value), // Unique key to track dropdown state changes
            value: isValueInItems ? value : null,
            hint: Text(
              hintText,
              style: Theme.of(context)
                  .textTheme
                  .captionRegular
                  ?.copyWith(color: grey300),
            ),
            isExpanded: true,
            onChanged: onChanged,
            items: genderOptions.map<DropdownMenuItem<String>>((String gender) {
              return DropdownMenuItem<String>(
                value: gender,
                child: Text(
                  gender,
                  style: Theme.of(context).textTheme.subheadingRegular,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
