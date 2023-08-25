import 'package:flutter/material.dart';
import 'package:flutter_flutter/core/dimentions.dart';
import 'package:flutter_flutter/core/route_utils/route_utils.dart';
import 'package:flutter_flutter/modules/features/note_editor/veiw.dart';
import 'package:flutter_flutter/modules/features/search/view.dart';
import 'package:flutter_flutter/weidget/app/app_aapbar.dart';
import 'package:flutter_flutter/weidget/app/app_icon_button.dart';
import 'package:flutter_flutter/weidget/app/note_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Notes',
        actions: [
          AppIconButton(
            icon: FontAwesomeIcons.magnifyingGlass,
            onTap: () =>RouteUtils.push(
                context: context,
                view: SearchView()),
          ),
          SizedBox(width: 20,),
          AppIconButton(icon: FontAwesomeIcons.circleInfo,
            onTap: () {  },),
          SizedBox(width: 16,)
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 10,
          itemBuilder: (context,index){
            return NoteCard();
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          FontAwesomeIcons.plus,
          size: 24.height,
        ),
        onPressed: ()=>RouteUtils.push(
            context: context,
            view: NoteEditorView()
        ),
      ),

    );
  }
}
