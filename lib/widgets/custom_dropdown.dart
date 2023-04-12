import 'package:flutter/material.dart';
import 'package:gireeb/helpers/constants/constants.dart';

class CustomDropdown extends StatefulWidget {
  final String hintText;
  final List<String> items;
  final String? value;
  final Function(String?)? onChanged;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;

  const CustomDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    this.value,
    this.onChanged,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value ?? widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      menuMaxHeight: 200,
      isExpanded: true,
      dropdownColor: kBgColor,
      decoration: InputDecoration(
        errorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: widget.hintText,
        hintStyle: kTitleTextstyle.copyWith(color: kSecounderyTextColor),
      ),
      value: selectedValue,
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue!;
          if (widget.onChanged != null) {
            widget.onChanged!(newValue);
          }
        });
      },
      onSaved: (newValue) {
        setState(() {
          selectedValue = newValue!;
          if (widget.onSaved != null) {
            widget.onSaved!(newValue);
          }
        });
      },
      validator: (newValue) {
        if (newValue == null || newValue.isEmpty) {
          return "can't be empty";
        } else {
          if (widget.validator != null) {
            return widget.validator!(newValue);
          } else {
            return null;
          }
        }
      },
      items: widget.items.map((val) {
        return DropdownMenuItem(
          value: val,
          child: Text(val),
        );
      }).toList(),
    );
  }
}
