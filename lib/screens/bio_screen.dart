import 'package:flutter/material.dart';

import '../widgets/custom_card_widget.dart';

class Bio extends StatelessWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIO'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.centerEnd,
                end: AlignmentDirectional.topCenter,
                colors: [Color(0xFF40484b), Color(0xFFb6cad5)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://cdn1.vectorstock.com/i/1000x1000/23/70/man-avatar-icon-flat-vector-19152370.jpg',
                )),
            Text(
              'elancer Flutter -2022',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Text(
              'UCAS-TI',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
              indent: 40,
              endIndent: 40,
              height: 50,
            ),
            CustomCardWidget(
              title: 'Tel:',
              subTitle: '123456789',
              trailingIcon: Icons.phone,
              marginBottom: 20,
              leadingIcon: Icons.mobile_friendly,
              onActionPressed: () {
                _doAction(context, message: 'calling');
              },
            ),
            CustomCardWidget(
              title: 'Email:',
              subTitle: 'elancer@gmail.com',
              trailingIcon: Icons.send,
              leadingIcon: Icons.email,
              onActionPressed: () {
                _doAction(context, message: 'Send Email');
              },
            ),
            CustomCardWidget(
              title: 'Location:',
              subTitle: 'Gaza',
              trailingIcon: Icons.map,
              marginBottom: 20,
              leadingIcon: Icons.location_city,
              onActionPressed: () {
                _doAction(context, message: 'open Map');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _doAction(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Padding(
          child: Text(message),
          padding: EdgeInsets.only(left: 10),
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.green.shade600,
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(10),
        dismissDirection: DismissDirection.vertical,
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {},
          textColor: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
