import 'package:flutter/material.dart';

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() => new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String? firstHalf;
  String? secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 50) {
      firstHalf = widget.text.substring(0, 50);
      secondHalf = widget.text.substring(50, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: secondHalf!.isEmpty
            ?  Text(firstHalf!)
            : Column(
          children: <Widget>[
             Text(flag ? ("${firstHalf!}...") : (firstHalf! + secondHalf!),style: TextStyle(color: Color(0xfff7C7C7C),fontSize: 13),),
             InkWell(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

                   Text(
                    flag ? "show more" : "show less",
                    style: const TextStyle(color: Colors.blue,fontSize: 13),
                  ),
                ],
              ),
              onTap: () {
                setState(() {
                  flag = !flag;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}