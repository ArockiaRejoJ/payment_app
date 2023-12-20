import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/screens/my_applications_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 25.r,
                    minRadius: 24.r,
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  SizedBox(width: 5.w),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            elevation: 20,
                            backgroundColor: Colors.white,
                            insetPadding: EdgeInsets.only(top: 50.h),
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 300.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(5, 5),
                                        blurRadius: 5,
                                        color: Colors.grey[500]!)
                                  ]),
                              padding: EdgeInsets.all(10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'My Profile',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                        ),
                                      )),
                                  SizedBox(height: 5.h),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MyApplicationScreen()));
                                      },
                                      child: Text(
                                        'My Applications',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text('User Name'),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.redAccent,
                    size: 24.sp,
                  ),
                  SizedBox(width: 5.w),
                  Icon(
                    Icons.close,
                    color: Colors.black26,
                    size: 24.sp,
                  ),
                  SizedBox(width: 5.w)
                ],
              ),
              SizedBox(height: 15.h),
              Text(
                'Selected Location',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5.w),
                  Text('my location, \nmy address, \nmy area, state')
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 100.h,
                width: 320.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 0.5),
                    color: Theme.of(context).primaryColor.withOpacity(0.1)),
              ),
              SizedBox(height: 20.h),
              Text(
                'Merchant Mobile Number',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 320.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Merchant Mobile Number',
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              Center(
                child: Text(
                  'Verify the number with OTP \nSent on the Merchant Mobile Number',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 0.5),
                        color: Colors.white),
                  ),
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 0.5),
                        color: Colors.white),
                  ),
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 0.5),
                        color: Colors.white),
                  ),
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 0.5),
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: 330.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor),
                  onPressed: () {},
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  'Resend OTP',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.green),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
