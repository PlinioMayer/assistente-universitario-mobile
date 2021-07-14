import 'package:flutter/material.dart';

class DefaultAppBar extends AppBar {

  DefaultAppBar({ Key? key, String titleText = 'Assistente Universitário' }):
        super(
          key: key,
          title: Text(titleText)
        );
}
