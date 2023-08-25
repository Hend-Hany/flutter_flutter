import 'package:flutter/material.dart';
import 'package:flutter_flutter/core/dimentions.dart';
import 'package:flutter_flutter/core/route_utils/route_utils.dart';
import 'package:flutter_flutter/modules/features/note_editor/veiw.dart';
import 'package:flutter_flutter/weidget/app/app_aapbar.dart';
import 'package:flutter_flutter/weidget/app/app_icon_button.dart';
import 'package:flutter_flutter/weidget/app/app_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteDetailsView extends StatelessWidget {
  const NoteDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        actions: [
          AppIconButton(
              icon: FontAwesomeIcons.penToSquare,
              onTap: ()=>RouteUtils.push(
                  context: context,
                  view: NoteEditorView(),
              ),
          ),
          SizedBox(width: 16,)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          AppText(
            title: 'title',
            fontSize: 36,
          ),
          SizedBox(height: 16.height,),
          AppText(
            title: 'subtitle',
            fontSize: 24,
          ),
        ],
      ),
    );
  }
}
