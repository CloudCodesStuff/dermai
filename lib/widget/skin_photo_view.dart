import 'dart:io';
import 'package:flutter/material.dart';

import '../styles.dart';

class SkinPhotoView extends StatelessWidget {
  final File? file;
  const SkinPhotoView({super.key, this.file});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
          //width: 300,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 198, 205, 208),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          height: 300,
          //color: Colors.blueGrey,
          child: (file == null)
              ? _buildEmptyView()
              : ClipRRect(
                  borderRadius: BorderRadius.circular(5), // Image border
                  child: Image.file(file!, fit: BoxFit.cover),
                )),
    );
  }

  Widget _buildEmptyView() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.photo,
            size: 40,
            color: kColorLightGray,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Please select a photo',
            style: kAnalyzingTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
