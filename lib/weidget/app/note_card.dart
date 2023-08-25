import 'package:flutter/material.dart';
import 'package:flutter_flutter/core/dimentions.dart';
import 'package:flutter_flutter/core/route_utils/route_utils.dart';
import 'package:flutter_flutter/modules/features/note_details/veiw.dart';
import 'package:flutter_flutter/weidget/app/app_colors.dart';
import 'package:flutter_flutter/weidget/app/app_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        margin:  EdgeInsets.only(bottom: 24.height),
        width: double.infinity,
        alignment: Alignment.center,
        child: Icon(FontAwesomeIcons.trash),
        decoration: BoxDecoration(
          color: AppColors.red,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 24.height),
        child: InkWell(
          borderRadius:BorderRadius.circular(12) ,
          onTap: ()=>RouteUtils.push(
              context: context,
              view: NoteDetailsView()
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.width,vertical: 12.height),
            width: double.infinity,
            alignment: Alignment.center,
            child: AppText(
              title: 'UI concepts worth exsisting',
              color: AppColors.black,
              fontSize: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.green
            ),
          ),
        ),
      ),
    );
  }
}
