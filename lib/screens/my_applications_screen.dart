import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/models/user_model.dart';
import 'package:payment_app/screens/android_deployment_screen.dart';
import 'package:payment_app/screens/payment_screen.dart';
import 'package:payment_app/screens/soundbox_deployment_Screen.dart';
import 'package:payment_app/status_container_widget.dart';

class MyApplicationScreen extends StatefulWidget {
  const MyApplicationScreen({Key? key}) : super(key: key);

  @override
  State<MyApplicationScreen> createState() => _MyApplicationScreenState();
}

class _MyApplicationScreenState extends State<MyApplicationScreen> {
  List<UserModel> listOfCustomers = [
    UserModel(
      id: 1,
      number: "6564654565",
      name: "collection",
      status: 1,
    ),
    UserModel(
      id: 2,
      number: "68454321",
      name: "test",
      status: 2,
    ),
    UserModel(
      id: 3,
      number: "2553555531",
      name: "data name",
      status: 3,
    ),
    UserModel(
      id: 4,
      number: "553515331",
      name: "checking",
      status: 4,
    ),
    UserModel(
      id: 5,
      number: "132222323",
      name: "done",
      status: 4,
    ),
  ];

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
            EdgeInsets.only(left: 40.w, right: 40.w, bottom: 10.h, top: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Applications',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 150.h,
              width: 270.w,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 10.h),
                child: const Text('Dashboard'),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 30.h,
              width: 270.w,
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Search with merchant name'),
                  Icon(
                    Icons.search,
                    size: 18.sp,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 30.h,
              width: 270.w,
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Filter by stage'),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 18.sp,
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${listOfCustomers[index].number}"),
                  Text(
                    "${listOfCustomers[index].name}",
                    textAlign: TextAlign.start,
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return Dialog(
                            elevation: 20,
                            backgroundColor: Colors.white,
                            alignment: Alignment.center,
                            child: Container(
                              height: 450.h,
                              width: 345.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    const BoxShadow(
                                        offset: Offset(5, 5),
                                        blurRadius: 5,
                                        color: Colors.grey)
                                  ]),
                              padding: EdgeInsets.all(10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.w, bottom: 20.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "${listOfCustomers[index].number}"),
                                        Text(
                                          "${listOfCustomers[index].name}",
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: 135.h,
                                            padding: EdgeInsets.only(left: 6.w),
                                            child: const VerticalDivider(
                                              color: Colors.black54,
                                              thickness: 2,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                  minRadius: 14.r,
                                                  maxRadius: 14.r,
                                                  backgroundColor:
                                                      Colors.green[300],
                                                  child: CircleAvatar(
                                                    minRadius: 12.r,
                                                    maxRadius: 12.r,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Icon(
                                                      Icons.circle_rounded,
                                                      size: 12.sp,
                                                      color: Colors.green[300],
                                                    ),
                                                  )),
                                              SizedBox(height: 15.h),
                                              CircleAvatar(
                                                  minRadius: 14.r,
                                                  maxRadius: 14.r,
                                                  backgroundColor:
                                                      Colors.blue[300],
                                                  child: CircleAvatar(
                                                    minRadius: 12.r,
                                                    maxRadius: 12.r,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Icon(
                                                      Icons.circle_rounded,
                                                      size: 12.sp,
                                                      color: Colors.blue[300],
                                                    ),
                                                  )),
                                              listOfCustomers[index].status ==
                                                          2 ||
                                                      listOfCustomers[index]
                                                              .status ==
                                                          3 ||
                                                      listOfCustomers[index]
                                                              .status ==
                                                          4
                                                  ? SizedBox(height: 32.5.h)
                                                  : SizedBox(height: 15.h),
                                              CircleAvatar(
                                                  minRadius: 14.r,
                                                  maxRadius: 14.r,
                                                  backgroundColor:
                                                      Colors.orange[300],
                                                  child: CircleAvatar(
                                                    minRadius: 12.r,
                                                    maxRadius: 12.r,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Icon(
                                                      Icons.circle_rounded,
                                                      size: 12.sp,
                                                      color: Colors.orange[300],
                                                    ),
                                                  )),
                                              listOfCustomers[index].status ==
                                                          2 ||
                                                      listOfCustomers[index]
                                                              .status ==
                                                          3 ||
                                                      listOfCustomers[index]
                                                              .status ==
                                                          4
                                                  ? Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 18.h),
                                                      child: Icon(
                                                        Icons
                                                            .location_on_rounded,
                                                        color: Colors.green,
                                                        size: 24.sp,
                                                      ),
                                                    )
                                                  : Container()
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5.w),
                                      SizedBox(
                                          width: 90.w,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 2.h),
                                              Text(
                                                'Application',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 22.h),
                                              Text(
                                                'Payment',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    color: Colors.black),
                                              ),
                                              listOfCustomers[index].status ==
                                                          2 ||
                                                      listOfCustomers[index]
                                                              .status ==
                                                          3 ||
                                                      listOfCustomers[index]
                                                              .status ==
                                                          4
                                                  ? SizedBox(height: 40.h)
                                                  : SizedBox(height: 22.h),
                                              Text(
                                                'Onboarding',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    color: listOfCustomers[
                                                                        index]
                                                                    .status ==
                                                                2 ||
                                                            listOfCustomers[
                                                                        index]
                                                                    .status ==
                                                                3 ||
                                                            listOfCustomers[
                                                                        index]
                                                                    .status ==
                                                                4
                                                        ? Colors.black
                                                        : Colors.grey),
                                              ),
                                              SizedBox(height: 22.h),
                                              Text(
                                                'Deployment',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    color: listOfCustomers[
                                                                        index]
                                                                    .status ==
                                                                3 ||
                                                            listOfCustomers[
                                                                        index]
                                                                    .status ==
                                                                4
                                                        ? Colors.black
                                                        : Colors.grey),
                                              ),
                                            ],
                                          )),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            listOfCustomers[index].status ==
                                                        1 ||
                                                    listOfCustomers[index]
                                                            .status ==
                                                        2 ||
                                                    listOfCustomers[index]
                                                            .status ==
                                                        3 ||
                                                    listOfCustomers[index]
                                                            .status ==
                                                        4
                                                ? const StatusContainer(
                                                    'KYC Approved')
                                                : Container(),
                                            SizedBox(height: 15.h),
                                            listOfCustomers[index].status ==
                                                        2 ||
                                                    listOfCustomers[index]
                                                            .status ==
                                                        3 ||
                                                    listOfCustomers[index]
                                                            .status ==
                                                        4
                                                ? Column(
                                                    children: [
                                                      StatusContainer(
                                                          'Received'),
                                                      SizedBox(height: 3.h),
                                                      StatusContainer('eNACH'),
                                                      SizedBox(height: 3.h),
                                                      StatusContainer(
                                                          'MID/TID Generated'),
                                                    ],
                                                  )
                                                : SizedBox(
                                                    height: 25.h,
                                                    width: 125.w,
                                                    child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors
                                                                .deepOrangeAccent,
                                                            foregroundColor:
                                                                Colors.white,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.r))),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  PaymentScreen(
                                                                listOfCustomers[
                                                                        index]
                                                                    .name,
                                                                listOfCustomers[
                                                                        index]
                                                                    .number,
                                                                listOfCustomers[
                                                                        index]
                                                                    .status,
                                                                (status) =>
                                                                    setState(
                                                                        () {
                                                                  listOfCustomers[
                                                                          index]
                                                                      .status = status;
                                                                  print(listOfCustomers[
                                                                          index]
                                                                      .status);
                                                                }),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Text(
                                                          'Collect Payment',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 10.sp,
                                                              color:
                                                                  Colors.white),
                                                        ))),
                                            listOfCustomers[index].status == 1
                                                ? Column(
                                                    children: [
                                                      SizedBox(height: 15.h),
                                                      const DueContainer()
                                                    ],
                                                  )
                                                : Container(),
                                            SizedBox(height: 17.5.h),
                                            listOfCustomers[index].status == 4
                                                ? Column(
                                                    children: [
                                                      StatusContainer(
                                                          'Android POS'),
                                                      SizedBox(height: 3.h),
                                                      StatusContainer(
                                                          'Soundbox'),
                                                    ],
                                                  )
                                                : listOfCustomers[index]
                                                            .status ==
                                                        3
                                                    ? Column(
                                                        children: [
                                                          const StatusContainer(
                                                              'Android POS'),
                                                          SizedBox(height: 3.h),
                                                          CollectionButton(
                                                              "Soundbox", () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        SoundboxDeploymentScreen(
                                                                  listOfCustomers[
                                                                          index]
                                                                      .name,
                                                                  listOfCustomers[
                                                                          index]
                                                                      .number,
                                                                  listOfCustomers[
                                                                          index]
                                                                      .status,
                                                                  (status) =>
                                                                      setState(
                                                                          () {
                                                                    listOfCustomers[index]
                                                                            .status =
                                                                        status;
                                                                    print(listOfCustomers[
                                                                            index]
                                                                        .status);
                                                                  }),
                                                                ),
                                                              ),
                                                            );
                                                          })
                                                        ],
                                                      )
                                                    : listOfCustomers[index]
                                                                .status ==
                                                            2
                                                        ? Column(
                                                            children: [
                                                              CollectionButton(
                                                                  "Android POS",
                                                                  () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            AndroidDeploymentScreen(
                                                                      listOfCustomers[
                                                                              index]
                                                                          .name,
                                                                      listOfCustomers[
                                                                              index]
                                                                          .number,
                                                                      listOfCustomers[
                                                                              index]
                                                                          .status,
                                                                      (status) =>
                                                                          setState(
                                                                              () {
                                                                        listOfCustomers[index].status =
                                                                            status;
                                                                        print(listOfCustomers[index]
                                                                            .status);
                                                                      }),
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                              SizedBox(
                                                                  height: 3.h),
                                                              CollectionButton(
                                                                  "Soundbox",
                                                                  () {
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                        SnackBar(
                                                                  content:
                                                                      Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 15
                                                                            .w),
                                                                    child: Text(
                                                                      "First Complete Android POS",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize: 14
                                                                              .sp,
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                  backgroundColor:
                                                                      Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  duration:
                                                                      const Duration(
                                                                          seconds:
                                                                              2),
                                                                ));
                                                              })
                                                            ],
                                                          )
                                                        : const DueContainer()
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 40.h),
                                  Center(
                                    child: Text('Status'),
                                  ),
                                  SizedBox(height: 5.h),
                                  listOfCustomers[index].status != 4
                                      ? Center(
                                          child: Text(
                                            listOfCustomers[index].status == 1
                                                ? "Pending for Payment"
                                                : listOfCustomers[index]
                                                            .status ==
                                                        2
                                                    ? "Pending for Deployment"
                                                    : listOfCustomers[index]
                                                                .status ==
                                                            3
                                                        ? "Live on Android POS"
                                                        : "",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      : Center(
                                          child: Icon(
                                            Icons.check_circle_outline,
                                            size: 22.sp,
                                            color: Colors.green,
                                          ),
                                        ),
                                  SizedBox(height: 5.h),
                                  Center(
                                      child: listOfCustomers[index].status == 3
                                          ? Text(
                                              'Pending for Soundbox Deployment',
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : listOfCustomers[index].status == 4
                                              ? Text(
                                                  'Live',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              : Container())
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      'Check Status',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            )),
            const Center(
              child: Text(
                'Copyrights © 2023 OMA Emirates,\nAll rights reserved',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5.h)
          ],
        ),
      ),
    );
  }
}
