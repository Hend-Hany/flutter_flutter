import 'package:flutter/material.dart%20';
import 'package:flutter_flutter/core/dimentions.dart';
import 'package:flutter_flutter/weidget/app/app_aapbar.dart';
import 'package:flutter_flutter/weidget/app/app_colors.dart';
import 'package:flutter_flutter/weidget/app/app_icon_button.dart';
import 'package:flutter_flutter/weidget/app/app_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteEditorView extends StatelessWidget {
  const NoteEditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        actions: [
          AppIconButton(
              icon:FontAwesomeIcons.eye ,
              onTap: (){},
            padding: EdgeInsets.only(right: 16.width),
          ),
          AppIconButton(
              icon:FontAwesomeIcons.floppyDisk ,
              onTap: (){}
          ),
          SizedBox(width: 16,)
        ],
      ),
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: EdgeInsets.all(16),
        children: [
          AppTextField(
            hint: 'Title',
            cursorHeight: 50,
            hintFontSize: 48,
          ),
          SizedBox(height: 16.height,),
          AppTextField(
            hint: 'Type Something...',
          ),
        ],
      ),
    );
  }
}
