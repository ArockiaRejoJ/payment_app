import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentScreen extends StatefulWidget {
  final String? name;
  final String? number;
  final int? status;
  final Function callback;
  const PaymentScreen(this.name, this.number, this.status, this.callback, {Key? key})
      : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _isPaymentCompleted = false;
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
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.close, size: 20.sp)),
          SizedBox(width: 5.w),
        ],
      ),
      backgroundColor: Colors.white,
      body: _isPaymentCompleted
          ? Column(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 30.sp,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Payment is successfull!',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Payment of ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal),
                            children: [
                              TextSpan(
                                text: '3421.00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' has been received ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal),
                              )
                            ]),
                      ),
                    ),
                    Center(
                      child: Text(
                        'successfully',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Auto ',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal),
                            children: [
                              TextSpan(
                                text: 'eNACH',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' requested is initiated to the',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal),
                              )
                            ]),
                      ),
                    ),
                    Center(
                      child: Text(
                        'merchant for registration.',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Check for the Status in',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 5.h),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'My Application',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
                const Center(
                  child: Text(
                    'Copyrights © 2023 OMA Emirates,\nAll rights reserved',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5.h)
              ],
            )
          : Padding(
              padding: EdgeInsets.only(
                  left: 25.w, right: 25.w, bottom: 10.h, top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Invoice Details',
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
                  SizedBox(height: 50.h),
                  SizedBox(
                    height: 200.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1. "),
                            SizedBox(height: 5.h),
                            Text("2. "),
                            SizedBox(height: 101.h)
                          ],
                        ),
                        SizedBox(width: 5.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Products",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 20.h),
                            Text("Android POS"),
                            SizedBox(height: 10.h),
                            Text("Soundbox"),
                          ],
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Qty",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 20.h),
                            Text("1"),
                            SizedBox(height: 10.h),
                            Text("1"),
                          ],
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Unit Price",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 20.h),
                            Text("1,999"),
                            SizedBox(height: 10.h),
                            Text(" 900"),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GST(18%)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Payable\nAmount",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Amount",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 20.h),
                            Text("1,999"),
                            SizedBox(height: 10.h),
                            Text(" 900"),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "2,899",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "521.82",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "3421.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        widget.callback(2);
                        setState(() {
                          _isPaymentCompleted = true;
                        });
                      },
                      child: SizedBox(
                        height: 100.h,
                        width: 100.w,
                        child: Image.asset('assets/images/img.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: Text('Scan the QR'),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: Text('or'),
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
                        widget.callback(2);
                        setState(() {
                          _isPaymentCompleted = true;
                        });
                      },
                      child: Text('Payment Link'),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
