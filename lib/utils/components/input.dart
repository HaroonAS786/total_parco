import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatefulWidget {
  final String label;
  final String placeholder;
  final String? error;
  final dynamic leftIconPress;
  final dynamic rightIconPress;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final TextStyle? prefixStyle;
  final TextStyle? suffixStyle;
  final Color? focusedIconColor;
  final TextEditingController textEditingController;
  bool obsecureText = false;
  dynamic onChangeValue;
  List<TextInputFormatter> inputFormatters;
  String? Function(String?) inputValidator;

  CustomFormField({
    Key? key,
    required this.label,
    required this.placeholder,
    required this.error,
    required this.inputFormatters,
    required this.inputValidator,
    required this.textEditingController,
    required this.onChangeValue,
    required this.obsecureText,
    this.leftIcon,
    this.rightIcon,
    this.prefixStyle,
    this.suffixStyle,
    this.focusedIconColor,
    this.leftIconPress,
    this.rightIconPress,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  late FocusNode _focusNode;
  Color? _iconColor;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _iconColor = widget.focusedIconColor;
    _focusNode.addListener(() {
      setState(() {
        _iconColor = _focusNode.hasFocus ? widget.focusedIconColor : null;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.label),
            const SizedBox(
              width: 4,
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 6.0),
                child: Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 8,
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),

        GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: TextFormField(
            obscureText: widget.obsecureText,
            controller: widget.textEditingController,
            onChanged: widget.onChangeValue,
            validator: widget.inputValidator,
            focusNode: _focusNode,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              prefixIcon:
                  widget.leftIcon != null ? Icon(widget.leftIcon) : null,
              suffixIcon: widget.rightIcon != null
                  ? Icon(
                      widget.rightIcon,
                      color: _iconColor,
                    )
                  : null,
              suffixStyle: widget.suffixStyle,
              prefixStyle: widget.prefixStyle,
              errorText: widget.error,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Colors.black45, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Colors.black45, width: 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              contentPadding: EdgeInsetsDirectional.only(start: 10.0),
            ),
          ),

          // TextFormField(
          //   controller: controller,
          //   inputFormatters: inputFormatters,
          //   validator: inputValidator,
          //   keyboardType: keyboardType,
          //   onChanged: onChangeValue,
          //   decoration: InputDecoration(
          //     // focusedBorder: InputBorder.none,
          //     // enabledBorder: InputBorder.none,
          //     errorText: error,
          //     focusedBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //       borderSide: BorderSide(
          //         color: Colors.black45,
          //       ),
          //     ),
          //     enabledBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //       borderSide: BorderSide(
          //         color: Colors.black45,
          //       ),
          //     ),
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //     contentPadding: EdgeInsetsDirectional.only(start: 10.0),
          //     hintText: placeholder,
          //   ),
          // ),
        )

        // Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(8),
        //       border: Border.all(color: Colors.grey),
        //     ),
        //     child:
        //     )
      ],
    );
  }
}
