import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            QuickActionItem(
              title: 'Review',
              icon: Icons.star_border,
            ),
            QuickActionItem(
              title: '+ Photo',
              icon: Icons.add_a_photo,
            ),
            QuickActionItem(
              title: 'Been Here',
              icon: Icons.location_on,
            ),
//        todo: make overlay widget as well
            QuickActionItem(
              title: 'Bookmarked',
              icon: Icons.bookmark,
            ),
            QuickActionItem(
              title: 'Share',
              icon: Icons.share,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            height: 2.0,
          ),
        ),
        QuickActionLargeItem(
          title: 'Getting food delivered?',
          subtitle: 'Skip calling and order faster',
          btncolor: Colors.green,
          btnText: 'Order Delivery 10% OFF',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            height: 2.0,
          ),
        ),
        QuickActionLargeItem(
          title: 'Enjoy your Gold privelege',
          subtitle: 'Get 1+1 on food here',
          btncolor: Colors.grey,
          btnText: 'Closed',
          isButtonDisabled: true,
        ),
      ],
    );
  }
}

class QuickActionItem extends StatelessWidget {
  String title;
  IconData icon;

  QuickActionItem({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon),
        Text(
          title,
          style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class QuickActionLargeItem extends StatelessWidget {
  String title, subtitle, btnText;
  Color btncolor;
  bool isButtonDisabled;

  QuickActionLargeItem(
      {this.title,
      this.subtitle,
      this.btnText,
      this.btncolor,
      this.isButtonDisabled = false});

  void _doNothing() {}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 4.0),
              child: Text(title,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 4.0),
              child: Text(subtitle,style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.left,),
            )],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: SizedBox(
            width: 130.0,
//            todo: font of button text and size to be changed
            child: RaisedButton(
              onPressed: isButtonDisabled ? null : _doNothing,
              color: btncolor,
              disabledTextColor: Colors.blueGrey,
              textColor: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    btnText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
