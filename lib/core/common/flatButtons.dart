import 'package:flutter/material.dart';
import 'package:library_store/core/enums/setting_option.dart';

class FlatButton extends StatelessWidget {
  FlatButton(
      {super.key,
      required this.name,
      this.coloredButton = false,
      this.buttonColor,
      this.titleColor,
      this.centerTitle = true,
      required this.ontap,
      this.suffixIcon});

  late String name;
  late Function() ontap;
  bool? coloredButton;
  Color? buttonColor;
  Color? titleColor;
  bool? centerTitle;
  Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: coloredButton! ? buttonColor : Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black45,
                width: 1,
              )),
          // color: Colors.red,
          child: centerTitle == true
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      name.toString().split('.').last,
                      style: TextStyle(color: titleColor),
                    ),
                    const Spacer()
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        name.toString().split('.').last,
                        style: TextStyle(color: titleColor),
                      ),
                    ),
                    const Spacer(),
                    suffixIcon != null
                        ? IconButton(onPressed: () {}, icon: suffixIcon!)
                        : const SizedBox(),
                  ],
                ),
        ));
  }
}
