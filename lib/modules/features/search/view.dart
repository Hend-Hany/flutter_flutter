import 'package:flutter/material.dart%20';
import 'package:flutter_flutter/core/dimentions.dart';
import 'package:flutter_flutter/core/route_utils/route_utils.dart';
import 'package:flutter_flutter/weidget/app/app_aapbar.dart';
import 'package:flutter_flutter/weidget/app/app_colors.dart';
import 'package:flutter_flutter/weidget/app/note_card.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SearchView(),
            SizedBox(height: 24.height,),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context,index){
                    return NoteCard();
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
