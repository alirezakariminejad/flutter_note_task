import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DnLight'),
      home: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: 132.0,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 20.0,
                      spreadRadius: -20.0,
                      offset: Offset(0, 30.0))
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/workout.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'تسک شماره 1',
                          style:
                              TextStyle(fontFamily: 'DnBold', fontSize: 16.0),
                        ),
                        Text(
                          'لورم ایپسوم متن ساختگی با تولید',
                          style:
                              TextStyle(fontFamily: 'DnLight', fontSize: 12.0),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90.0,
                              height: 30.0,
                              margin: EdgeInsets.only(top: 15.0),
                              decoration: BoxDecoration(
                                color: Color(0xff18DAA3),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                  horizontal: 12.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/icon_time.png',
                                      height: 15.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      '10:30',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'DnBold',
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.0,),
                            Container(
                              width: 90.0,
                              height: 30.0,
                              margin: EdgeInsets.only(top: 15.0),
                              decoration: BoxDecoration(
                                color: Color(0xffE2F6F1),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                  horizontal: 12.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/icon_edit.png',
                                      height: 15.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      'ویرایش',
                                      style: TextStyle(
                                        color: Color(0xff18DAA3),
                                        fontFamily: 'DnBold',
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    MSHCheckbox(
                      size: 32,
                      value: isChecked,
                      colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
                        checkedColor: Color(0xff18DAA3),
                      ),
                      style: MSHCheckboxStyle.fillScaleCheck,
                      onChanged: (selected) {
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
