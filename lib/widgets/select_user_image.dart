import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectUserImage extends StatelessWidget {
  const SelectUserImage({
    Key? key,
    required this.userImage,
    this.onTap,
  }) : super(key: key);

  final File? userImage;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: userImage != null
              ? Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(.3),
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: FileImage(
                        userImage!,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(.3),
                      width: 2,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const FaIcon(
                    FontAwesomeIcons.camera,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
