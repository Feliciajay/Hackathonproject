import 'package:flutter/material.dart';

class ShopContainer extends StatelessWidget {
  const ShopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: const Color(0xffFA7189),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 5, top: 5),
            child: Text(
              ' 6 UK',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA7189)),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 32,
          width: 50,
          decoration: BoxDecoration(
            color: Color(0xffFA7189),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: const Color(0xffFA7189),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 5, top: 5),
            child: Text(
              ' 7 UK',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFFFFFF)),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 32,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: const Color(0xffFA7189),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 5, top: 5),
            child: Text(
              ' 8 UK',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA7189)),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 32,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: const Color(0xffFA7189),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 5, top: 5),
            child: Text(
              ' 9 UK',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA7189)),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 32,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: const Color(0xffFA7189),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 2, top: 5),
            child: Text(
              ' 10 UK',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA7189)),
            ),
          ),
        ),
      ],
    );
  }
}
