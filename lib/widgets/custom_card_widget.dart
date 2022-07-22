import 'package:flutter/material.dart';

typedef BioAction = void Function();
class CustomCardWidget extends StatelessWidget {
 const CustomCardWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.trailingIcon,
      required  this.leadingIcon,
        required this.onActionPressed,


       this.marginBottom = 20})
      : super(key: key);

  final String title;


  final IconData leadingIcon;
  final IconData trailingIcon;
  final double marginBottom;
  final String subTitle;
  final  BioAction onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),

      margin: EdgeInsets.only(left: 20, right: 20, bottom: marginBottom),
      child: ListTile(
        hoverColor: Colors.grey,
        enabled: true
        ,
        horizontalTitleGap: 4,
        minVerticalPadding: 1,
        leading: Icon(leadingIcon),
        title: Text(title),
        //contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 1 ),
        subtitle: Text(subTitle),
        trailing: IconButton(
          onPressed: onActionPressed,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}
