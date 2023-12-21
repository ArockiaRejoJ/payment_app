import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SoundboxDeploymentScreen extends StatefulWidget {
  final String? name;
  final String? number;
  final int? status;
  final Function callback;
  const SoundboxDeploymentScreen(
      this.name, this.number, this.status, this.callback,
      {Key? key})
      : super(key: key);

  @override
  State<SoundboxDeploymentScreen> createState() =>
      _SoundboxDeploymentScreenState();
}

class _SoundboxDeploymentScreenState extends State<SoundboxDeploymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 0,
        actions: [
          Icon(
            Icons.notifications_none,
            color: Colors.redAccent,
            size: 20.sp,
          ),
          SizedBox(width: 5.w),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close, size: 20.sp)),
          SizedBox(width: 5.w),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.only(left: 25.w, right: 25.w, bottom: 10.h, top: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deployment Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 20.h),
            Text("${widget.number}"),
            SizedBox(height: 10.h),
            Text(
              "${widget.name}",
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 30.h),
            Text(
              'Soundbox',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 25.h,
              width: 330.w,
              padding: EdgeInsets.only(left: 10.w, right: 5.w),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MAP Device Serial Number",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.check_circle_outline,
                    size: 22.sp,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              'Test Transaction Chargeslip Image',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 100.h,
              width: 330.w,
              padding: EdgeInsets.only(left: 10.w, right: 5.w),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Click the image of test transaction chargeslip",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                            color: Colors.grey),
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        size: 22.sp,
                        color: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: CircleAvatar(
                      maxRadius: 25.r,
                      minRadius: 25.r,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: CircleAvatar(
                        maxRadius: 18.r,
                        minRadius: 18.r,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(5.r),
                          child: CircularProgressIndicator(
                              color: Theme.of(context).primaryColor,
                              strokeWidth: 5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              'Image Of Device At Store',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 100.h,
              width: 330.w,
              padding: EdgeInsets.only(left: 10.w, right: 5.w),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Click the image of device at store counter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                            color: Colors.grey),
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        size: 22.sp,
                        color: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: CircleAvatar(
                      maxRadius: 25.r,
                      minRadius: 25.r,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: CircleAvatar(
                        maxRadius: 18.r,
                        minRadius: 18.r,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(5.r),
                          child: CircularProgressIndicator(
                              color: Theme.of(context).primaryColor,
                              strokeWidth: 5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 30.sp,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                'Deployment is successfull!',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 300.w,
              height: 30.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r))),
                onPressed: () {
                  widget.callback(4);
                  Navigator.of(context).pop();
                },
                child: const Text('Deploy Another Device'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
