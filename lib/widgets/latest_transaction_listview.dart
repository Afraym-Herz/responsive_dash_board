import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_list_tile_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});
  static const List<UserInfoListTileModel> userInfolist =  [
    UserInfoListTileModel(image: AppImages.madrani, title: "Madrani Andi" , subTitle: "Madraniadi20@gmail.com") ,
     UserInfoListTileModel(image: AppImages.josua, title: "Josua Nunito" , subTitle: "Josh Nunito@gmail.com") ,
     UserInfoListTileModel(image: AppImages.madrani, title: "Madrani Andi" , subTitle: "Madraniadi20@gmail.com") ,
  ] ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // if little items will show 
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
          userInfolist.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoListTileModel: e))).toList() ,
          ),
    ) ;
    


    return SizedBox( // if much items will show
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return IntrinsicWidth(
                child: UserInfoListTile(userInfoListTileModel: userInfolist[index]),
              );
            } ,
            itemCount: userInfolist.length,
          ),
        ) ;
  }
}