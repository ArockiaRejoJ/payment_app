import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusContainer extends StatelessWidget {
  final String? text;
  const StatusContainer(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 125.w,
      padding: EdgeInsets.only(left: 10.w, right: 5.w),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10.sp,
                color: Theme.of(context).primaryColor),
          ),
          Icon(
            Icons.check_circle_outline,
            size: 16.sp,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}

class DueContainer extends StatelessWidget {
  const DueContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 125.w,
      padding: EdgeInsets.only(left: 10.w, right: 5.w),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Due',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10.sp,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}

class CollectionButton extends StatelessWidget {
  final String? text;
  final VoidCallback onclick;
  const CollectionButton(this.text, this.onclick, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      width: 125.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        onPressed: onclick,
        child: Text(
          text!,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 10.sp,
              color: Colors.white),
        ),
      ),
    );
  }
}
