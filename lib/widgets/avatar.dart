import 'package:flutter/material.dart';



class Avatar extends StatelessWidget {
  final String displayImage ;
  final bool displayStatus;
  final bool? displayBorder;
  final double? avatarWidth;
  final double? avatarHeight;

  Avatar({
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.avatarWidth = 50,
    this.avatarHeight = 50
});


  @override
  Widget build(BuildContext context) {
    // Widget statusInticator;
    // if(displayStatus == true){
    //   statusInticator = Positioned(
    //     bottom: 0,
    //     right: 0,
    //     child: Container(
    //       width: 15,
    //       height: 15,
    //       decoration: BoxDecoration(
    //           color: Colors.greenAccent,
    //           shape: BoxShape.circle,
    //           border: Border.all(
    //             color: Colors.white,
    //             width: 2,
    //           )
    //       ),
    //     ),
    //   );
    // }else{
    //   statusInticator = SizedBox();
    // }

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: displayBorder!
            ? Border.all(
          color: Colors.blueAccent,
          width: 3,
        )
            : Border.fromBorderSide(BorderSide.none),
      ),
      margin: EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              fit: BoxFit.cover,
              width: avatarWidth,
              height: avatarHeight,
            ),
          ),
          //if else
          displayStatus == true // '== true' can be hided
          ?Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    )
                ),
              ),
            ) : SizedBox(),

        ],
      ),
    );
  }
}
